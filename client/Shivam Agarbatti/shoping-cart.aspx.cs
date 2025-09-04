using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Script.Serialization;
using System.Text;
public partial class client_Shivam_Agarbatti_shoping_cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userIp = Request.UserHostAddress;
        lbl_ip.Text = userIp.ToString();

        if (!IsPostBack)
        {
            if (Request.QueryString["remove_cart_id"] != null)
            {
                int cartId;
                if (int.TryParse(Request.QueryString["remove_cart_id"], out cartId))
                {
                    RemoveCartItem(cartId);
                }
                else
                {
                    SendJsonResponse(false, "Invalid Cart ID.");
                }
            }
        }
    }

    private void RemoveCartItem(int cartId)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["SACON"].ConnectionString;
        bool success = false;
        string message = "";

        try
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "DELETE FROM cart_master WHERE cart_id = @cart_id";  // ✅ Corrected table and column names
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@cart_id", cartId);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    success = rowsAffected > 0;
                    message = success ? "Item removed successfully!" : "Item not found!";
                }
            }
        }
        catch (Exception ex)
        {
            message = "Error: " + ex.Message;
        }

        // ✅ Send JSON Response for SweetAlert
        SendJsonResponse(success, message);
    }

    private void SendJsonResponse(bool success, string message)
    {
        var response = new { success = success, message = message };
        JavaScriptSerializer js = new JavaScriptSerializer();

        Response.Clear();
        Response.ContentType = "application/json";
        Response.Write(js.Serialize(response));
        Response.End();
    }
    protected void checkoutBtn_Click(object sender, EventArgs e)
{
    Button btn = (Button)sender;
    string cartId = btn.CommandArgument;
    string userIp = "";
    string connectionString = ConfigurationManager.ConnectionStrings["SACON"].ConnectionString;

    using (SqlConnection con = new SqlConnection(connectionString))
    {
        con.Open();

        // 🔹 Fetch cart items and update them
        foreach (RepeaterItem item in Repeater1.Items)
        {
            Label lbl_CART_id = item.FindControl("lbl_CART_id") as Label;
            Label lbl_PROD_id = item.FindControl("lbl_PROD_id") as Label;
            TextBox txtQuantity = item.FindControl("txtQuantity") as TextBox;

            if (lbl_CART_id != null && lbl_PROD_id != null && txtQuantity != null)
            {
                int cartID = Convert.ToInt32(lbl_CART_id.Text);
                int productID = Convert.ToInt32(lbl_PROD_id.Text);
                int quantity = Convert.ToInt32(txtQuantity.Text);

                // Fetch product price
                string priceQuery = "SELECT price FROM product_master WHERE product_Id = @ProductID";
                decimal price = 0;

                using (SqlCommand priceCmd = new SqlCommand(priceQuery, con))
                {
                    priceCmd.Parameters.AddWithValue("@ProductID", productID);
                    object result = priceCmd.ExecuteScalar();
                    if (result != null)
                    {
                        price = Convert.ToDecimal(result);
                    }
                }

                // Calculate total price
                decimal total = quantity * price;

                // Update cart_master table
                string updateQuery = "UPDATE cart_master SET quantity = @Quantity, total = @Total WHERE cart_id = @CartID";

                using (SqlCommand cmd = new SqlCommand(updateQuery, con))
                {
                    cmd.Parameters.AddWithValue("@Quantity", quantity);
                    cmd.Parameters.AddWithValue("@Total", total);
                    cmd.Parameters.AddWithValue("@CartID", cartID);
                    cmd.ExecuteNonQuery();
                }

                // 🔹 Store the last cartId for redirection
                cartId = cartID.ToString();
            }
        }

        // 🔹 Fetch user's IP address even if cartId was empty
        if (!string.IsNullOrEmpty(cartId))
        {
            string fetchIpQuery = "SELECT TOP 1 ip_address FROM cart_master WHERE cart_id = @CartID";

            using (SqlCommand cmd = new SqlCommand(fetchIpQuery, con))
            {
                cmd.Parameters.AddWithValue("@CartID", cartId);
                object result = cmd.ExecuteScalar();
                if (result != null)
                {
                    userIp = result.ToString();
                }
            }
        }

        con.Close();
    }

    // 🔹 Handle missing cartId or IP address
    if (string.IsNullOrEmpty(cartId)) cartId = "0";  // Default value if cart ID is missing
    if (string.IsNullOrEmpty(userIp)) userIp = "unknown";  // Default value if IP is missing

    // ✅ Redirect with Cart ID & IP Address
    Response.Redirect("checkout.aspx?cartid=" + cartId + "&ip=" + userIp);

}




    protected void rptCart_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            TextBox txtQuantity = (TextBox)e.Item.FindControl("txtQuantity");
            DataRowView drv = (DataRowView)e.Item.DataItem;

            if (txtQuantity != null && drv["price"] != DBNull.Value)
            {
                txtQuantity.Attributes.Add("data-price", drv["price"].ToString());
            }
        }
    }

}
