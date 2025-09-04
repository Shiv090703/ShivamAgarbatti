using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class client_ogani_master_shop_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string productId = btn.CommandArgument;
        string userIp = Request.UserHostAddress;

        string connectionString = ConfigurationManager.ConnectionStrings["SACON"].ConnectionString;

        using (SqlConnection con = new SqlConnection(connectionString))
        {
            con.Open();

            // ✅ Check if the cart_master table exists
            string checkTableQuery = "SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'cart_master'";
            using (SqlCommand cmdCheckTable = new SqlCommand(checkTableQuery, con))
            {
                int tableExists = (int)cmdCheckTable.ExecuteScalar();
                if (tableExists == 0)
                {
                    // Show error alert if cart_master table doesn't exist
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                        "Swal.fire({ icon: 'error', title: 'Database Error', text: 'Cart table not found!' });", true);
                    return;
                }
            }

            // ✅ Check if product is already in the cart
            string query = "SELECT COUNT(*) FROM cart_master WHERE product_id = @productId AND ip_address = @userIp";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@productId", productId);
                cmd.Parameters.AddWithValue("@userIp", userIp);
                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    // Show SweetAlert for duplicate product
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                        "Swal.fire({ icon: 'error', title: 'Oops...', text: 'This product is already in your cart!' });", true);
                    return;
                }
            }

            // ✅ Insert the product into the cart_master table
            string insertQuery = "INSERT INTO cart_master (product_id, ip_address, cart_date) VALUES (@productId, @userIp, GETDATE())";
            using (SqlCommand cmdInsert = new SqlCommand(insertQuery, con))
            {
                cmdInsert.Parameters.AddWithValue("@productId", productId);
                cmdInsert.Parameters.AddWithValue("@userIp", userIp);

                cmdInsert.ExecuteNonQuery();
            }
        }

        // ✅ Show SweetAlert success message
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
            "Swal.fire({ icon: 'success', title: 'Added!', text: 'Product added to cart successfully!', showConfirmButton: false, timer: 2000 });", true);
    }





    public string GetClientIP()
    {
        string ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

        if (!string.IsNullOrEmpty(ip))
        {
            string[] ipArray = ip.Split(',');
            return ipArray[0]; // First IP in the list
        }

        return HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"]; // Fallback
    }
}