using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

public partial class client_Shivam_Agarbatti_checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ipAddress = Request.QueryString["ip"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                LoadCartDetails(ipAddress);
            }
        }
        //if (Session["UserId"] == null)  // Check if user is logged in
        //{
        //    ShowAlert("Warning", "Please register before placing an order!", "warning");
        //}
    }

    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {
        if (!ValidateForm()) return;

        string connString = ConfigurationManager.ConnectionStrings["SACON"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connString))
        {
            conn.Open();
            SqlTransaction transaction = conn.BeginTransaction();

            try
            {
                int userId = GetOrCreateUser(conn, transaction);
                if (userId == -1) return;

                int orderId = InsertOrder(conn, transaction, userId);
                InsertOrderDetails(conn, transaction, orderId);
                ClearCart(conn, transaction);

                transaction.Commit();
                ShowAlert("Success", "Your order has been placed successfully!", "success");
            }
            catch (Exception ex)
            {
                transaction.Rollback();
                ShowAlert("Error", "Something went wrong. Please try again!", "error");
            }
            
        }
        
    }

    private void LoadCartDetails(string ipAddress)
    {
        string connString = ConfigurationManager.ConnectionStrings["SACON"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connString))
        {
            string query = "SELECT p.product_name, c.quantity, c.total " +
                           "FROM cart_master c " +
                           "JOIN product_master p ON c.product_id = p.product_Id " +
                           "WHERE c.ip_address = @ip_address";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@ip_address", ipAddress);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                decimal subtotal = 0;
                litProductList.Text = ""; // Clear previous content

                while (reader.Read())
                {
                    string productName = reader["product_name"].ToString();
                    int quantity = Convert.ToInt32(reader["quantity"]);
                    decimal total = Convert.ToDecimal(reader["total"]);

                    subtotal += total;

                    // Append Product Details using string.Format()
                    litProductList.Text += string.Format("<li>{0} (x{1}) <span>₹{2:F2}</span></li>", productName, quantity, total);
                }

                conn.Close();

                // Set Subtotal & Total using string.Format()
                litSubtotal.Text = string.Format("Subtotal <span>₹{0:F2}</span>", subtotal);
                litTotal.Text = string.Format("Total <span>₹{0:F2}</span>", subtotal);
            }
        }
    }
    private int GetOrCreateUser(SqlConnection conn, SqlTransaction transaction)
    {
        string email = txtEmail.Text.Trim();
        string query = "SELECT user_id FROM users WHERE email = @Email";
        using (SqlCommand cmd = new SqlCommand(query, conn, transaction))
        {
            cmd.Parameters.AddWithValue("@Email", email);
            object result = cmd.ExecuteScalar();
            if (result != null)
            {
                Session["UserId"] = result.ToString();  // Store UserId in session
                return Convert.ToInt32(result); 
            }
        }

        if (!chkCreateAccount.Checked)
        {
            ShowAlert("Warning", "Please register before placing an order!", "warning");
            return -1;
        }

        query = "INSERT INTO users (first_name, last_name, email, phone, address, city, state, country, postcode, password) " +
                "OUTPUT INSERTED.user_id VALUES (@FirstName, @LastName, @Email, @Phone, @Address, @City, @State, @Country, @Postcode, @Password)";
        using (SqlCommand cmd = new SqlCommand(query, conn, transaction))
        {
            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", txtStreetAddress.Text.Trim());
            cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
            cmd.Parameters.AddWithValue("@State", txtState.Text.Trim());
            cmd.Parameters.AddWithValue("@Country", txtCountry.Text.Trim());
            cmd.Parameters.AddWithValue("@Postcode", txtPostcode.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

            int userId = Convert.ToInt32(cmd.ExecuteScalar());
            Session["UserId"] = userId.ToString(); // Store UserId in session
            return userId;
        }
    }


    private int InsertOrder(SqlConnection conn, SqlTransaction transaction, int userId)
    {
        string query = "INSERT INTO order_master (user_id, total_price, order_date, payment_method, status) OUTPUT INSERTED.order_id VALUES (@UserId, @TotalPrice, GETDATE(), @PaymentMethod, 'Pending')";
        using (SqlCommand cmd = new SqlCommand(query, conn, transaction))
        {
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.Parameters.AddWithValue("@TotalPrice", GetCartTotal(conn, transaction));
            cmd.Parameters.AddWithValue("@PaymentMethod", chkPaypal.Checked ? "Online" : "COD");
            return Convert.ToInt32(cmd.ExecuteScalar());
        }
    }
    private void InsertOrderDetails(SqlConnection conn, SqlTransaction transaction, int orderId)
    {
        string query = "INSERT INTO order_details (order_id, product_id, quantity, total_price) SELECT @OrderId, product_id, quantity, total FROM cart_master WHERE ip_address = @IpAddress";
        using (SqlCommand cmd = new SqlCommand(query, conn, transaction))
        {
            cmd.Parameters.AddWithValue("@OrderId", orderId);
            cmd.Parameters.AddWithValue("@IpAddress", Request.QueryString["ip"]);
            cmd.ExecuteNonQuery();
        }
    }
    private void ClearCart(SqlConnection conn, SqlTransaction transaction)
    {
        string query = "DELETE FROM cart_master WHERE ip_address = @IpAddress";
        using (SqlCommand cmd = new SqlCommand(query, conn, transaction))
        {
            cmd.Parameters.AddWithValue("@IpAddress", Request.QueryString["ip"]);
            cmd.ExecuteNonQuery();
        }
    }
    private decimal GetCartTotal(SqlConnection conn, SqlTransaction transaction)
    {
        string query = "SELECT SUM(total) FROM cart_master WHERE ip_address = @IpAddress";
        using (SqlCommand cmd = new SqlCommand(query, conn, transaction))
        {
            cmd.Parameters.AddWithValue("@IpAddress", Request.QueryString["ip"]);
            object result = cmd.ExecuteScalar();
            return result != DBNull.Value ? Convert.ToDecimal(result) : 0;
        }
    }
    private bool ValidateForm()
    {
        if (string.IsNullOrWhiteSpace(txtFirstName.Text) ||
            string.IsNullOrWhiteSpace(txtLastName.Text) ||
            string.IsNullOrWhiteSpace(txtEmail.Text) ||
            string.IsNullOrWhiteSpace(txtPhone.Text) ||
            string.IsNullOrWhiteSpace(txtStreetAddress.Text) ||
            string.IsNullOrWhiteSpace(txtCity.Text) ||
            string.IsNullOrWhiteSpace(txtState.Text) ||
            string.IsNullOrWhiteSpace(txtCountry.Text) ||
            string.IsNullOrWhiteSpace(txtPostcode.Text))
        {
            ShowAlert("Warning", "Please fill all required fields!", "warning");
            return false;
        }
        return true;
    }
    private void ShowAlert(string title, string message, string type)
    {
        string script = string.Format("Swal.fire({{ title: '{0}', text: '{1}', icon: '{2}' }});", title, message, type);
        ScriptManager.RegisterStartupScript(this, GetType(), "SweetAlert", script, true);
    }


}
