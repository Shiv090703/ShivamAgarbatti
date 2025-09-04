using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class client_Shivam_Agarbatti_ZodiacIncense : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetRecommendation_Click(object sender, EventArgs e)
    {
        DateTime birthDate;
        if (DateTime.TryParse(calendarDOB.Text, out birthDate))
        {
            GetZodiacSignAndIncense(birthDate);
        }
        else
        {
            lblZodiacSign.Text = "Invalid Date!";
            lblFragrance.Text = "-";
        }
    }

    private void GetZodiacSignAndIncense(DateTime birthDate)
    {
        string connStr = ConfigurationManager.ConnectionStrings["SACON"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string query = @"
            SELECT TOP 1 ZodiacSign, RecommendedFragrance 
            FROM Zodiac_Incense 
            WHERE 
                (MONTH(@BirthDate) = MONTH(StartDate) AND DAY(@BirthDate) >= DAY(StartDate))
                OR 
                (MONTH(@BirthDate) = MONTH(EndDate) AND DAY(@BirthDate) <= DAY(EndDate))
                OR 
                (MONTH(StartDate) > MONTH(EndDate) AND 
                 (MONTH(@BirthDate) >= MONTH(StartDate) OR MONTH(@BirthDate) <= MONTH(EndDate)))
            ORDER BY StartDate;";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@BirthDate", birthDate);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                lblZodiacSign.Text = reader["ZodiacSign"].ToString();
                lblFragrance.Text = reader["RecommendedFragrance"].ToString();
            }
            else
            {
                lblZodiacSign.Text = "Not Found!";
                lblFragrance.Text = "-";
            }
        }
    }
}
