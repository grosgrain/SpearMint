using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class cn_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        txtUser.Attributes.Add("onblur", "javascript:myTextChanged()");

        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            Path = "~/Scripts/AspNet.ScriptManager.jQuery.dll"
        });

        
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        if (txtUser.Text == "" || RegularExpressionValidator1.IsValid == false)
        { 
            lblUsermsg.Text = "";
        }

         System.Text.RegularExpressions.Regex rg = new System.Text.RegularExpressions.Regex("^[\u4e00-\u9fa5A-Za-z0-9-_]*$");

         if (rg.IsMatch(txtUser.Text.Trim()) && txtUser.Text != "")
        {
            string CustomID = txtUser.Text.Trim();

            string strCon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";

            SqlConnection conn = new SqlConnection(strCon);

            SqlDataAdapter da = new SqlDataAdapter("select * from [QingboheCustomer] where QingboheCustomer.Qingbohe_Username= @ID", conn);

            da.SelectCommand.Parameters.Add("@ID", SqlDbType.VarChar, 50);

            da.SelectCommand.Parameters["@ID"].Value = CustomID;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                lblUsermsg.Text = "用户已存在";

            }
            else
            {
                lblUsermsg.Text = "该用户名可注册";
                
            }

        }
        
    }
    protected void Register_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            string Username = txtUser.Text;
            string Password = txtPassword2.Text;
            string Address = txtAddress.Text;
            string City = txtCity.Text;
            string State = DropDownList1.SelectedValue.ToString();
            string Phone = txtPhone.Text;
            string Email = txtEmail.Text;

            SqlConnection myconn = new SqlConnection();
            myconn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
            myconn.Open();
            string qry = "insert into [QingboheCustomer] values(N'" + Username + "','" + Password + "',N'" + Address + "',N'" + City + "','" + State + "','" + Phone + "','" + Email + "')";
            SqlCommand cmd = new SqlCommand(qry, myconn);
            int a = cmd.ExecuteNonQuery();
            myconn.Close();
            if (a>0)
            { Response.Redirect("~/cn/success.aspx"); }
            else
            {
                Response.Redirect("~/cn/fail.aspx");
            }
        }
        else
        {
            return;
        }
    }
    protected void Goback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cn/login.aspx");
    }
}
  


       