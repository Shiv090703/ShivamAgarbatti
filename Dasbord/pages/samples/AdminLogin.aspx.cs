using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;



public partial class Dasbord_pages_samples_AdminLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SACON"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;

        cmd.CommandType = CommandType.StoredProcedure;

        cmd.CommandText = "Admin_CheckLogin";

        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@email", txtLoginID.Text.Trim());
        cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());

        int n =Convert.ToInt32(cmd.ExecuteScalar());

        if (n==1)  
        {
            Session["admin_email"] = txtLoginID.Text;
           
            Response.Redirect("category.aspx");
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ErrorMessage",
                   "Swal.fire({ title: 'Error!', text: 'Invalid Email or Password!', icon: 'error' });", true);
            
        }

        con.Close();
            
    }
}