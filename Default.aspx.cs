using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        StringBuilder sb = new StringBuilder();

        foreach (DataListItem li in DataList1.Items)
        {
            Label lblcatnm = li.FindControl("category_nameLabel") as Label;

            if (lblcatnm != null)
            {
                sb.AppendLine("Category Name: " + lblcatnm.Text);



            }
        }

        Response.Write("<pre>" + sb.ToString() + "</pre>"); // ✅ Preserves line breaks in HTML
        
    }
}