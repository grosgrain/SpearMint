using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using AjaxControlToolkit;
using System.Globalization;

public partial class shop_demo : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        Session["ShopId"] = "A00001";
        SqlConnection myconn = new SqlConnection();
        myconn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
        myconn.Open();
        string qry = "SELECT * FROM [QingboheShop] WHERE Qingbohe_ShopId = '" + Session["ShopId"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(qry, myconn);
        SqlDataReader sqlDr = cmd.ExecuteReader();

        if (sqlDr.Read())
        {
            Session["ShopTitle"] = sqlDr[1].ToString();
            Session["ShopSubTitle"] = sqlDr[2].ToString();
            Session["ShopTel"] = sqlDr[3].ToString();
            Session["ShopIntro"] = sqlDr[4].ToString();
            Session["ShopRating"] = sqlDr[5];
            Session["ShopOwner"] = sqlDr[6].ToString();
        }

        myconn.Close();

        lblTitle.Text = Session["ShopTitle"].ToString();
        lblSubtitle.Text = Session["ShopSubTitle"].ToString();
        lblTel.Text = Session["ShopTel"].ToString();
        lblIntro.Text = Session["ShopIntro"].ToString();
        Rating1.CurrentRating = (int)Session["ShopRating"];

        if (Session["Username"] != null)
        {
            pnlReview.Visible = true;
            string ShopOwner = Session["ShopOwner"].ToString();
            string Username = Session["Username"].ToString();

            if (Username == ShopOwner)
            {
                btnIntroEdit.Visible = true;
            }
        }

        else { btnIntroEdit.Visible = false; }

        if (!this.IsPostBack)
        {
            DataTable dt = GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM Qingbohe_Demo_UserRating");
            Rating1.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
            lblRatingmsg.Text = string.Format("{0} people rated！The Average rating is {1}！", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);

        }

    }

    private DataTable GetData(string query)
    {
        DataTable dt = new DataTable();
        string constr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                }
            }
            return dt;
        }
    }



    protected void btnIntroEdit_Click(object sender, EventArgs e)
    {
        lblIntro.Visible = false;
        txtIntro.Visible = true;
        txtIntro.Text = lblIntro.Text;
        btnIntroEdit.Visible = false;
        btnIntroSubmit.Visible = true;
    }
    protected void btnIntroSubmit_Click(object sender, EventArgs e)
    {
        lblIntro.Text = txtIntro.Text;
        lblIntro.Visible = true;
        txtIntro.Visible = false;
        btnIntroSubmit.Visible = false;
        btnIntroEdit.Visible = true;

        Session["ShopIntro"] = lblIntro.Text;

        SqlConnection myconn = new SqlConnection();
        myconn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
        myconn.Open();
        string qry = "UPDATE [QingboheShop] SET QingboheShop.Qingbohe_ShopIntro = N'" + Session["ShopIntro"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(qry, myconn);
        int a = cmd.ExecuteNonQuery();

        if (a > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('医馆简介修改成功！')", true);
        }
        myconn.Close();
    }


    protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        if (Session["Username"] != null)
        {
            string constr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Qingbohe_Demo_UserRating VALUES(@Rating)"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@Rating", e.Value);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Session["Rating"] = e.Value;
                    }
                }
            }

            SqlConnection myconn = new SqlConnection();
            myconn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
            myconn.Open();
            string qry = "UPDATE [QingboheShop] SET QingboheShop.Qingbohe_ShopRating = '" + Session["Rating"].ToString() + "'";
            SqlCommand cmd2 = new SqlCommand(qry, myconn);
            cmd2.ExecuteNonQuery();
            myconn.Close();

            Response.Redirect(Request.Url.AbsoluteUri);
        }

        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('请登录后评分！')", true);
        }
    }
    protected void btnReviewSubmit_Click(object sender, EventArgs e)
    {
        string date = DateTime.Now.ToString("MM/dd/yyyy HH:mm");
        SqlConnection myconn = new SqlConnection();
        myconn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
        myconn.Open();
        string qry = "insert into [Qingbohe_Demo_UserReview] values(N'" + Session["Username"] + "',N'" + txtReview.Text.ToString() + "','" + date + "')";
        SqlCommand cmd = new SqlCommand(qry, myconn);
        int a = cmd.ExecuteNonQuery();
        myconn.Close();
        if (a > 0)
        { Response.Redirect(Request.Url.AbsoluteUri); }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('未知错误！')", true);
        }
    }
    protected void btnBuy_Click(object sender, EventArgs e)
    {
        pnlMask.Visible = true;
        pnlBombBox.Visible = true;
    }
    protected void btnClosebomp_Click(object sender, EventArgs e)
    {
        pnlMask.Visible = false;
        pnlBombBox.Visible = false;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        string selectdate = Calendar1.SelectedDate.ToString("yyyy-MM-dd");

        string strCon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";

        SqlConnection conn = new SqlConnection(strCon);

        SqlDataAdapter da = new SqlDataAdapter("select * from [Qingbohe_Demo_UserReserve] where Qingbohe_Demo_UserReserve.Qingbohe_Demo_ReserveDate= @Date", conn);

        da.SelectCommand.Parameters.Add("@Date", SqlDbType.VarChar, 50);

        da.SelectCommand.Parameters["@Date"].Value = selectdate;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count >= 1) //Here to change the customers that accepted each day 
        {

            lblCalendarmsg.Text = "您选择的日期："+selectdate+"已约满!请选择其他日期！";
        }
        else
        {
            lblCalendarmsg.Text = "您选择的日期：" + selectdate + "可预约！";
            
        }
    }
}

