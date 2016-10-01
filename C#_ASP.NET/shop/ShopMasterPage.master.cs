using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shop_ShopMasterPage : System.Web.UI.MasterPage
{

        protected void Page_Load(object sender, EventArgs e)
    {
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            Path = "~/Scripts/AspNet.ScriptManager.jQuery.dll"
        });



        if (Session["Username"] != null)
        {
            lblWelcome.Text = "Hi！" + Session["Username"].ToString();
            System.Web.UI.HtmlControls.HtmlGenericControl loginbutton = (System.Web.UI.HtmlControls.HtmlGenericControl)this.FindControl("loginbutton");
            if (loginbutton != null)
            {
                loginbutton.Style.Add("display","none");
            }

            System.Web.UI.HtmlControls.HtmlGenericControl userinfo = (System.Web.UI.HtmlControls.HtmlGenericControl)this.FindControl("userinfo");

            if (userinfo != null)
            {
                userinfo.Style.Add("display", "inline-block");
            }

            System.Web.UI.HtmlControls.HtmlGenericControl exit = (System.Web.UI.HtmlControls.HtmlGenericControl)this.FindControl("exit");
            if (exit != null)
            {
                exit.Style.Add("display", "inline-block");
            }

        }
    }
    protected void btnExit_Click(object sender, EventArgs e)
    {
        lblWelcome.Visible = false;

        System.Web.UI.HtmlControls.HtmlGenericControl loginbutton = (System.Web.UI.HtmlControls.HtmlGenericControl)this.FindControl("loginbutton");
        if (loginbutton != null)
        {
            loginbutton.Style.Add("display", "inline-block");
        }

        System.Web.UI.HtmlControls.HtmlGenericControl userinfo = (System.Web.UI.HtmlControls.HtmlGenericControl)this.FindControl("userinfo");

        if (userinfo != null)
        {
            userinfo.Style.Add("display", "none");
        }

        System.Web.UI.HtmlControls.HtmlGenericControl exit = (System.Web.UI.HtmlControls.HtmlGenericControl)this.FindControl("exit");
        if (exit != null)
        {
            exit.Style.Add("display", "none");
        }
        Session["Username"] = null;
        Session["Password"] = null;
        Session["Address"] =null;
        Session["City"] = null;
        Session["State"] =null;
        Session["Phone"] = null;
        Session["Email"] = null;

        Response.Redirect(Request.RawUrl);
        
    }
    }

