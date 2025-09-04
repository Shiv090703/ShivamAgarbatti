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


public partial class Dasbord_pages_samples_AdminRegister : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SACON"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(txtAdminName.Text) || string.IsNullOrWhiteSpace(txtLoginID.Text) || string.IsNullOrWhiteSpace(txtPassword.Text) || !fileUploadAdminImage.HasFile)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please fill in all fields before submitting.');", true);
            return;
        }
        con.Open();

        cmd.Connection = con;

        cmd.CommandType = CommandType.StoredProcedure;

        cmd.CommandText = "Check_user";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@email", txtLoginID.Text);
        int n = Convert.ToInt32(cmd.ExecuteScalar());

        con.Close();

        if (n == 1)
        {
            Response.Write("<script>alert('Admin with this email id is already existed');</script>");
        }
        else
        {

            fileUploadAdminImage.SaveAs(Server.MapPath("~/ProjectImage/" + fileUploadAdminImage.FileName));
            string fileimg = "~/ProjectImage/" + fileUploadAdminImage.FileName;
            con.Open();

            cmd.Connection = con;

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.CommandText = "Admin_register";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@adminname", txtAdminName.Text.Trim());
            cmd.Parameters.AddWithValue("@email", txtLoginID.Text.Trim());
            cmd.Parameters.AddWithValue("@pwd", txtPassword.Text.Trim());
            cmd.Parameters.AddWithValue("@admin_img", fileimg.ToString());
            cmd.Parameters.AddWithValue("@isact", true);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Write("<script>alert('Admin Registered Successfully!');</script>");

        }  
    }

    protected void btnBackToLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminLogin.aspx");
    }
}