using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cn_fail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.AppendHeader("Refresh", "3;url=../cn/register.aspx");
        lblFailmsg.Text = "3秒钟后返回注册页...";
    }
}