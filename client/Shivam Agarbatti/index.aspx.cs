using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_ogani_master_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadFeaturedProducts();
        }
    }
    private void LoadFeaturedProducts()
    {
        List<Product> products = new List<Product>
    {
        new Product { ImagePath = "http://localhost:50723/ProjectImage/150_Three-in-one_1.jpg", ProductName = "Cycal Agarbatti", Price = 30.00, CategoryClass = "oranges fresh-meat" },
        new Product { ImagePath = "http://localhost:50723/ProjectImage/4_7cf13463-217a-48f8-a334-55a3ad23e51d_720x.jpg", ProductName = "Champo", Price = 25.00, CategoryClass = "vegetables fastfood" },
        new Product { ImagePath = "http://localhost:50723/ProjectImage/5_f9a99435-351a-4f12-ab07-5ca6ad856e18_720x.jpg", ProductName = "Perfume combo", Price = 15.00, CategoryClass = "vegetables fresh-meat" },
        new Product { ImagePath = "http://localhost:50723/ProjectImage/index/17_720x.jpg", ProductName = "Pefume Agarbatti", Price = 20.00, CategoryClass = "fastfood oranges" },
        new Product { ImagePath = "http://localhost:50723/ProjectImage/dhoop_02.jpg", ProductName = "rajnigandha", Price = 50.00, CategoryClass = "fresh-meat vegetables" },
        new Product { ImagePath = "http://localhost:50723/ProjectImage/dhop_01.jpg", ProductName = "Ratrani", Price = 18.00, CategoryClass = "oranges fastfood" },
        new Product { ImagePath = "http://localhost:50723/ProjectImage/Heritege-ls-800x800_5c9a281a-3eda-4f84-add3-51f2b76db87d.jpg", ProductName = "heritage", Price = 12.00, CategoryClass = "fresh-meat vegetables" },
        new Product { ImagePath = "http://localhost:50723/ProjectImage/index/13_720x.jpg", ProductName = "Perfiume EVA", Price = 10.00, CategoryClass = "fastfood vegetables" }
    };

        rptFeaturedProducts.DataSource = products;
        rptFeaturedProducts.DataBind();
    }

    public class Product
    {
        public string ImagePath { get; set; }
        public string ProductName { get; set; }
        public double Price { get; set; }
        public string CategoryClass { get; set; }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}