using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dasbord_pages_samples_Catagorey : System.Web.UI.Page
{
    private readonly string conString = ConfigurationManager.ConnectionStrings["SACON"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadCategories();

            // Check if deleteId is passed in query string
            if (Request.QueryString["deleteId"] != null)
            {
                int deleteId;
                if (int.TryParse(Request.QueryString["deleteId"], out deleteId))
                {
                    DeleteCategory(deleteId);
                }
                else
                {
                    ShowAlert("Error!", "Invalid category ID.", "error");
                }
            }
        }
    }

    private void LoadCategories()
    {
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM catagory_master", con))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string categoryName = txtCat.Text.Trim();
        string description = txt_disc.Text.Trim();
        bool isActive = chkOnOff.Checked;
        string filePath = "";

        // Check if category exists
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM catagory_master WHERE category_name=@categoryName", con))
            {
                cmd.Parameters.AddWithValue("@categoryName", categoryName);
                con.Open();
                int exists = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();

                if (exists > 0)
                {
                    ShowAlert("Error!", "Category already exists.", "error");
                    return;
                }
            }
        }

        // File upload handling
        if (FU_logo.HasFile)
        {
            string fileExt = System.IO.Path.GetExtension(FU_logo.FileName).ToLower();
            if (fileExt == ".jpg" || fileExt == ".png" || fileExt == ".jpeg")
            {
                filePath = "~/ProjectImage/" + FU_logo.FileName;
                FU_logo.SaveAs(Server.MapPath(filePath));
            }
            else
            {
                ShowAlert("Error!", "Only JPG and PNG images are allowed.", "error");
                return;
            }
        }

        // Insert new category
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO catagory_master (category_name, discription, category_logo, is_active) VALUES (@name, @desc, @logo, @active)", con))
            {
                cmd.Parameters.AddWithValue("@name", categoryName);
                cmd.Parameters.AddWithValue("@desc", description);
                cmd.Parameters.AddWithValue("@logo", filePath);
                cmd.Parameters.AddWithValue("@active", isActive);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        LoadCategories();
        ShowAlert("Success!", "Category added successfully.", "success");
    }

    private void DeleteCategory(int categoryId)
    {
        try
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM catagory_master WHERE category_Id = @id", con))
                {
                    cmd.Parameters.AddWithValue("@id", categoryId);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            LoadCategories();
            ShowAlert("Deleted!", "Category has been deleted.", "success");
        }
        catch (SqlException ex)
        {
            if (ex.Number == 547) // Foreign Key Constraint Error
            {
                ShowAlert("Error!", "Cannot delete. This category is linked to products.", "error");
            }
            else
            {
                ShowAlert("Error!", "Something went wrong.", "error");
            }
        }
    }

    private void ShowAlert(string title, string message, string icon)
    {
        string script = String.Format("Swal.fire({{ title: '{0}', text: '{1}', icon: '{2}' }});", title, message, icon);
        ScriptManager.RegisterStartupScript(this, GetType(), "alert", script, true);
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditCategory")
        {
            int categoryId;
            if (int.TryParse(e.CommandArgument.ToString(), out categoryId))
            {
                Response.Redirect(String.Format("EditCategory.aspx?categoryId={0}", categoryId));
            }
            else
            {
                ShowAlert("Error!", "Invalid category ID.", "error");
            }
        }
    }
    protected void chkOnOff_CheckedChanged(object sender, EventArgs e)
    {
        // Handle checkbox change event here
        bool isChecked = ((CheckBox)sender).Checked;

        // Example: Display alert when checkbox is checked/unchecked
        if (isChecked)
        {
            ShowAlert("Info", "Checkbox is checked.", "info");
        }
        else
        {
            ShowAlert("Info", "Checkbox is unchecked.", "info");
        }
    }

}
