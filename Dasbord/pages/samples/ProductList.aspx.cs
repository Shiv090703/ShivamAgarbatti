using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Dasbord_pages_samples_ProductList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SACON"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadCategories();
            LoadSubCategories();
            LoadProducts();
        }
    }

    private void LoadProducts(string search = "", int categoryId = 0, int subCategoryId = 0)
    {
        string query = "SELECT * FROM product_master WHERE 1=1";

        if (!string.IsNullOrEmpty(search))
            query += " AND product_name LIKE @Search";

        if (categoryId > 0)
            query += " AND category_Id = @CategoryId";

        if (subCategoryId > 0)
            query += " AND sub_category_Id = @SubCategoryId";

        SqlCommand cmd = new SqlCommand(query, con);
        if (!string.IsNullOrEmpty(search))
            cmd.Parameters.AddWithValue("@Search", "%" + search + "%");

        if (categoryId > 0)
            cmd.Parameters.AddWithValue("@CategoryId", categoryId);

        if (subCategoryId > 0)
            cmd.Parameters.AddWithValue("@SubCategoryId", subCategoryId);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        gvProducts.DataSource = dt;
        gvProducts.DataBind();
    }

    private void LoadCategories()
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM catagory_master", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        ddlCategory.DataSource = dt;
        ddlCategory.DataTextField = "category_name";
        ddlCategory.DataValueField = "category_Id";
        ddlCategory.DataBind();
        ddlCategory.Items.Insert(0, new System.Web.UI.WebControls.ListItem("-- Select Category --", "0"));
    }

    private void LoadSubCategories()
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM sub_category_master", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        ddlSubCategory.DataSource = dt;
        ddlSubCategory.DataTextField = "sub_category_name";
        ddlSubCategory.DataValueField = "sub_category_Id";
        ddlSubCategory.DataBind();
        ddlSubCategory.Items.Insert(0, new System.Web.UI.WebControls.ListItem("-- Select Subcategory --", "0"));
    }

    protected void gvProducts_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvProducts.PageIndex = e.NewPageIndex;
        LoadProducts(txtSearch.Text, Convert.ToInt32(ddlCategory.SelectedValue), Convert.ToInt32(ddlSubCategory.SelectedValue));
    }


    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        LoadProducts(txtSearch.Text, Convert.ToInt32(ddlCategory.SelectedValue), Convert.ToInt32(ddlSubCategory.SelectedValue));
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadProducts(txtSearch.Text, Convert.ToInt32(ddlCategory.SelectedValue), Convert.ToInt32(ddlSubCategory.SelectedValue));
    }

    protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadProducts(txtSearch.Text, Convert.ToInt32(ddlCategory.SelectedValue), Convert.ToInt32(ddlSubCategory.SelectedValue));
    }

    protected void gvProducts_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "UpdateProduct")
        {
            int productId = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("ProductUpdate.aspx?id=" + productId);
        }
        else if (e.CommandName == "DeleteProduct")
        {
            int productId = Convert.ToInt32(e.CommandArgument);
            DeleteProduct(productId);
        }
    }
    // Function to delete a product with SweetAlert notification
    private void DeleteProduct(int productId)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM product_master WHERE product_Id = @ProductId", con);
            cmd.Parameters.AddWithValue("@ProductId", productId);
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {
                // Show success notification using SweetAlert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "SuccessMessage",
                    "Swal.fire({ title: 'Deleted!', text: 'Product has been removed.', icon: 'success' });", true);

                // Refresh the product list
                LoadProducts(txtSearch.Text, Convert.ToInt32(ddlCategory.SelectedValue), Convert.ToInt32(ddlSubCategory.SelectedValue));
            }
            else
            {
                // Show error message
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ErrorMessage",
                    "Swal.fire({ title: 'Error!', text: 'Product could not be deleted.', icon: 'error' });", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ExceptionMessage",
                "Swal.fire({ title: 'Error!', text: '" + ex.Message.Replace("'", "\\'") + "', icon: 'error' });", true);
        }
    }

}
