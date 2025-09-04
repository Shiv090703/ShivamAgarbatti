using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

public partial class client_Shivam_Agarbatti_ContactUs : System.Web.UI.Page
{
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            // Get values from form fields
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string subject = txtSubject.Text.Trim();
            string message = txtMessage.Text.Trim();

            // Get connection string from Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["SACON"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO ContactUs (Name, Email, Subject, Message) VALUES (@Name, @Email, @Subject, @Message)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Subject", subject);
                    cmd.Parameters.AddWithValue("@Message", message);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            // Show SweetAlert success message
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                "Swal.fire({title: 'Success!', text: 'Your message has been submitted successfully!', icon: 'success'});", true);
        }
        catch (Exception ex)
        {
            // Show SweetAlert error message
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                "Swal.fire({title: 'Error!', text: '" + ex.Message.Replace("'", "\\'") + "', icon: 'error'});", true);
        }
    }
}
