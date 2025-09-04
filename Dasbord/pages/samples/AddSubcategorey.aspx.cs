using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Dasbord_pages_samples_AddSubcategorey : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SACON"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadSubcategories();
        }
    }

    protected void btn_save_subCat_Click(object sender, EventArgs e)
    {
        // Check if the subcategory already exists
        if (IsSubcategoryExists(txt_subcat_name.Text, drop_cat_name.SelectedValue))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "showAlert", "Swal.fire('Error', 'This subcategory already exists!', 'error');", true);
            return;
        }

        // Insert new subcategory
        using (SqlCommand cmd = new SqlCommand("INSERT INTO sub_category_master (sub_category_name, discription, category_Id, is_active) VALUES (@name, @desc, @catId, @active)", con))
        {
            cmd.Parameters.AddWithValue("@name", txt_subcat_name.Text.Trim());
            cmd.Parameters.AddWithValue("@desc", txt_sub_drscription.Text.Trim());
            cmd.Parameters.AddWithValue("@catId", drop_cat_name.SelectedValue);
            cmd.Parameters.AddWithValue("@active", check_is_active.Checked);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        // Show success message
        ClientScript.RegisterStartupScript(this.GetType(), "showAlert", "Swal.fire('Success', 'Subcategory added successfully!', 'success');", true);

        // Clear input fields
        ClearFields();

        // Refresh subcategory list
        LoadSubcategories();
    }

    private bool IsSubcategoryExists(string subCategoryName, string categoryId)
    {
        using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM sub_category_master WHERE sub_category_name = @name AND category_Id = @catId", con))
        {
            cmd.Parameters.AddWithValue("@name", subCategoryName.Trim());
            cmd.Parameters.AddWithValue("@catId", categoryId);

            con.Open();
            int count = (int)cmd.ExecuteScalar();
            con.Close();

            return count > 0; // Returns true if the subcategory already exists
        }
    }

    private void ClearFields()
    {
        txt_subcat_name.Text = "";
        txt_sub_drscription.Text = "";
        drop_cat_name.SelectedIndex = 0;
        check_is_active.Checked = true;
    }

    private void LoadSubcategories()
    {
        using (SqlDataAdapter da = new SqlDataAdapter("SELECT s.sub_category_Id, s.sub_category_name, s.discription, c.category_name, s.is_active FROM sub_category_master s JOIN catagory_master c ON s.category_Id = c.category_Id", con))
        {
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int subCategoryId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        // Check if products exist in product_master before deleting the subcategory
        using (SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM product_master WHERE sub_category_Id = @id", con))
        {
            checkCmd.Parameters.AddWithValue("@id", subCategoryId);
            con.Open();
            int productCount = (int)checkCmd.ExecuteScalar();
            con.Close();

            if (productCount > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "showAlert", "Swal.fire('Error', 'Cannot delete: Products exist in this subcategory!', 'error');", true);
                return; // Stop further execution
            }
        }

        // If no products exist, proceed with deletion
        using (SqlCommand cmd = new SqlCommand("DELETE FROM sub_category_master WHERE sub_category_Id = @id", con))
        {
            cmd.Parameters.AddWithValue("@id", subCategoryId);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        // Show success message
        ClientScript.RegisterStartupScript(this.GetType(), "showAlert", "Swal.fire('Deleted!', 'Subcategory has been deleted successfully.', 'success');", true);

        LoadSubcategories(); // Refresh list
    }

}
