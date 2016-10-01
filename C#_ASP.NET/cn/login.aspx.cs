using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class cn_login : System.Web.UI.Page
{
    static string prevPage = String.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            Path = "~/Scripts/AspNet.ScriptManager.jQuery.dll"
        });

        if (!IsPostBack)
        {
            prevPage = Request.UrlReferrer.ToString();
        }


        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cn/register.aspx");
       
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        SqlConnection myconn = new SqlConnection();
            myconn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
            myconn.Open();
            string qry = "select * from [QingboheCustomer] where QingboheCustomer.Qingbohe_Username= '" + txtUser.Text.Trim() + "' and QingboheCustomer.Qingbohe_Password= '" + txtPassword.Text + "'";
            SqlCommand cmd = new SqlCommand(qry, myconn);
            SqlDataReader sqlDr = cmd.ExecuteReader();
            string vCode = Session["CheckCode"].ToString();
            if (sqlDr.Read())
            {
                Session["Username"] = sqlDr[1].ToString();
                Session["Password"] = sqlDr[2].ToString();
                Session["Address"] = sqlDr[3].ToString();
                Session["City"] = sqlDr[4].ToString();
                Session["State"] = sqlDr[5].ToString();
                Session["Phone"] = sqlDr[6].ToString();
                Session["Email"] = sqlDr[7].ToString();
                if (txtcheck.Text == vCode)
                Response.Redirect(prevPage);
                else
                    lblErrormsg.Text = "Wrong security code! Please be aware it is case sensitive!";
            }
            else
            {
                lblErrormsg.Text = "Wrong username or password!";
            }
            myconn.Close();
    }
    protected void btnForgetPsw_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cn/forgotpsw.aspx");
    }
}