using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class Dasbord_pages_samples_ProductUpdate : System.Web.UI.Page
{
    string connString = ConfigurationManager.ConnectionStrings["SACON"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack && Request.QueryString["id"] != null)
        {
            int productId = Convert.ToInt32(Request.QueryString["id"]);
            LoadProductDetails(productId);
        }
    }
    private void LoadProductDetails(int productId)
    {
        using (SqlConnection con = new SqlConnection(connString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM product_master WHERE product_Id=@ProductId", con);
            cmd.Parameters.AddWithValue("@ProductId", productId);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                hfProductId.Value = productId.ToString();
                txtProductName.Text = dr["product_name"].ToString();
                txtDescription.Text = dr["description"].ToString();
                txtPrice.Text = dr["price"].ToString();
                txtWeight.Text = dr["weight"].ToString();
                txtFragrance.Text = dr["fragrance"].ToString();
                txtLength.Text = dr["length"].ToString();
                txtPackagingType.Text = dr["packaging_type"].ToString();
                chkFreeHolder.Checked = Convert.ToBoolean(dr["free_incense_holder"]);
                txtQuantity.Text = dr["quantity_available"].ToString();
                imgPreview.ImageUrl = dr["product_photo"].ToString();
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string imagePath = imgPreview.ImageUrl;

        if (fileUpload.HasFile)
        {
            string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);
            string savePath = "~/ProjectImage/" + fileName;
            fileUpload.PostedFile.SaveAs(Server.MapPath(savePath));
            imagePath = savePath;
        }

        using (SqlConnection con = new SqlConnection(connString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE product_master SET product_name=@Name, description=@Desc, price=@Price, weight=@Weight, fragrance=@Fragrance, length=@Length, packaging_type=@Package, free_incense_holder=@Holder, quantity_available=@Quantity, product_photo=@Image WHERE product_Id=@ProductId", con);
            cmd.Parameters.AddWithValue("@Name", txtProductName.Text);
            cmd.Parameters.AddWithValue("@Desc", txtDescription.Text);
            cmd.Parameters.AddWithValue("@Price", txtPrice.Text);
            cmd.Parameters.AddWithValue("@Weight", txtWeight.Text);
            cmd.Parameters.AddWithValue("@Fragrance", txtFragrance.Text);
            cmd.Parameters.AddWithValue("@Length", txtLength.Text);
            cmd.Parameters.AddWithValue("@Package", txtPackagingType.Text);
            cmd.Parameters.AddWithValue("@Holder", chkFreeHolder.Checked);
            cmd.Parameters.AddWithValue("@Quantity", txtQuantity.Text);
            cmd.Parameters.AddWithValue("@Image", imagePath);
            cmd.Parameters.AddWithValue("@ProductId", hfProductId.Value);
            cmd.ExecuteNonQuery();
        }

        // Show SweetAlert and then redirect
        ScriptManager.RegisterStartupScript(this, GetType(), "UpdateSuccess",
            "Swal.fire({ title: 'Success!', text: 'Product updated successfully.', icon: 'success' }).then(() => { window.location = 'ProductList.aspx'; });", true);
    }

}
