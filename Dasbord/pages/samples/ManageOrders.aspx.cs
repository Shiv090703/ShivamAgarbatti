using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dasbord_pages_samples_ManageOrders : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["SACON"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadOrders();
        }
    }

    private void LoadOrders(string queryCondition = "")
    {
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string query = "SELECT o.*, u.first_name + ' ' + u.last_name AS user_name, u.email " +
               "FROM order_master o " +
               "JOIN users u ON o.user_id = u.user_id";

            if (!string.IsNullOrEmpty(queryCondition))
            {
                query += " WHERE " + queryCondition;
            }

            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gvOrders.DataSource = dt;
                    gvOrders.DataBind();
                }
            }
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string condition = "";

        if (!string.IsNullOrEmpty(txtOrderId.Text))
        {
            condition += "o.order_id = " + txtOrderId.Text;
        }
        if (!string.IsNullOrEmpty(txtUserId.Text))
        {
            if (condition != "") condition += " AND ";
            condition += "o.user_id = " + txtUserId.Text;
        }
        if (!string.IsNullOrEmpty(txtOrderDate.Text))
        {
            if (condition != "") condition += " AND ";
            condition += "CAST(o.order_date AS DATE) = '" + txtOrderDate.Text + "'";
        }

        LoadOrders(condition);
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtOrderId.Text = "";
        txtUserId.Text = "";
        txtOrderDate.Text = "";
        LoadOrders();
    }

    protected void gvOrders_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ChangeStatus")
        {
            int orderId = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = ((Button)e.CommandSource).NamingContainer as GridViewRow;
            DropDownList ddlStatus = row.FindControl("ddlStatus") as DropDownList;

            if (ddlStatus != null)
            {
                UpdateOrderStatus(orderId, ddlStatus.SelectedValue);
            }
        }
    }

    private void UpdateOrderStatus(int orderId, string newStatus)
    {
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string query = "UPDATE order_master SET status = @status WHERE order_id = @order_id";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@status", newStatus);
                cmd.Parameters.AddWithValue("@order_id", orderId);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        LoadOrders();
        lblMessage.Text = "Order status updated successfully!";
    }
}
