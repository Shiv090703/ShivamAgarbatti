using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Dasbord_pages_samples_AddProduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SACON"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chkOnOff_CheckedChanged(object sender, EventArgs e)
    {
        //string onOff = chkOnOff.Checked ? "On" : "Off";
        //ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + onOff + "')", true);
    }
    protected void SaveProduct_Click(object sender, EventArgs e)
    {
        #region Check Category available or not
            con.Open();

        cmd.Connection = con;

        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select count(*) from catagory_master where category_name='" + txt_ProductName.Text.Trim() + "' ";
        int n = Convert.ToInt32(cmd.ExecuteScalar());

        con.Close();

        if (n == 1)// To check Catgory is alredy exist or not
        {
            Response.Write("<script>alert('Categrory already exist')</script>");
        }
        else
        {
            #region Add Category
            FU_product.SaveAs(Server.MapPath("~/ProjectImage/" +FU_product.FileName));
            string filePath = "~/ProjectImage/" + FU_product.FileName;

            con.Open();

            cmd.Connection = con;

            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "INSERT INTO product_master (product_name, description, price, weight, fragrance, length, packaging_type, free_incense_holder, quantity_available, category_Id, sub_category_Id, product_photo, is_active) VALUES ('" + txt_ProductName.Text + "','" + txt_ProductDiscription.Text + "','" + txt_ProdPrice.Text + "','" + txt_Weight.Text + "','" + txt_fregrance.Text + "','" + txt_length.Text + "','" + txt_PakagingType.Text + "','" + chkOnOff.Checked + "','" + txt_Quantitiy.Text + "','" + drop_Catagory.SelectedValue + "','" + drop_SubCategory.SelectedValue + "','" + filePath.ToString() + "','" + check_Is_Active.Checked + "')";

            cmd.ExecuteNonQuery();

            con.Close();
            GridView1.DataBind();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "Swal.fire('Success', 'Product added successfully!', 'success');", true);
            #endregion
            txt_fregrance.Text = "";
            txt_length.Text = "";
            txt_PakagingType.Text = "";
            txt_ProdPrice.Text = "";
            txt_ProductDiscription.Text = "";
            txt_ProductName.Text = "";
            txt_Quantitiy.Text = "";
            txt_Weight.Text = "";

        }
        #endregion
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        
    }
}