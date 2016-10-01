using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class cn_forgotpsw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnTypeEmail_Click(object sender, EventArgs e)
    {
        string strCon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";

            SqlConnection conn = new SqlConnection(strCon);

            SqlDataAdapter da = new SqlDataAdapter("select * from [QingboheCustomer] where QingboheCustomer.Qingbohe_Email= '" + txtTypeEmail.Text.Trim() + "'", conn);

            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                
                string body = "Subject:" + "\n" + "" + "\n" + "SpearMint Customer Password Recovery" + "\n" + "" + "\n" + "\n";
                body += "Message:" + "\n" + "" + "\n" + "Dear Customer, your password is:" + ds.Tables[0].Rows[0]["Qingbohe_Password"] + "\n" + "" + "\n" + "" + "\n" + "" + "\n";
                body += "SpearMint - Your Loyal Friend" + "\n" + "" + "\n" + " SpearMint.com" + "\n" + "" + "\n" + "\n";

                var smtp = new System.Net.Mail.SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential("qingbohe.com@gmail.com", "mmmm4444");
                    smtp.Timeout = 20000;
                }

                smtp.Send("qingbohe.com@gmail.com", txtTypeEmail.Text, "SpearMint Customer Password Recovery", body);

                lblfailmsg.ForeColor = System.Drawing.Color.Blue;
                lblfailmsg.Text = "The password has already been sent to your registered Email！";
                
            }
          else{
              lblfailmsg.Text = "User name does not exist! Please register.";
              Response.AppendHeader("Refresh", "5;url=../cn/register.aspx");
              
            }
            conn.Close();
    }
    protected void btnRelogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cn/login.aspx");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }
}