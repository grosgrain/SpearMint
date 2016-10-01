using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class cn_passwordchange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnChangepsw.Attributes.Add("onClick", "javascript:Exit()");
    }
    protected void btnChangepsw_Click(object sender, EventArgs e)
    {
        if (txtOldpassword.Text != Session["Password"].ToString())
        {
            lblOldpasswordmsg.Text = "密码不正确，请重新输入！";
        }

        else{
            lblOldpasswordmsg.Text = "";
            if(Page.IsValid)
            {
                string password = txtNewpassword2.Text;

                SqlConnection myconn = new SqlConnection();
                myconn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
                myconn.Open();
                string qry = "UPDATE [QingboheCustomer] SET QingboheCustomer.Qingbohe_Password = '" + password + "' WHERE Qingbohe_Username = '" + Session["Username"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(qry, myconn);
                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('密码修改成功！请重新登录！')", true);
                }
                myconn.Close();

               
            }
        } 
    }

}