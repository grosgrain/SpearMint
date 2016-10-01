using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class losangeles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            Path = "~/Scripts/AspNet.ScriptManager.jQuery.dll"
        });

        SqlConnection myconn = new SqlConnection();
        myconn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
        myconn.Open();
        string qry = "SELECT Qingbohe_ShopRating FROM [QingboheShop] WHERE Qingbohe_ShopId ='A00001'";
        SqlCommand cmd = new SqlCommand(qry, myconn);
        SqlDataReader sqlDr = cmd.ExecuteReader();

        if (sqlDr.Read())
        {
            Session["ShopA00001_Rating"] = sqlDr[0];
        }
        
        myconn.Close();

        Qingboherating.CurrentRating = (int)Session["ShopA00001_Rating"];
    }

}