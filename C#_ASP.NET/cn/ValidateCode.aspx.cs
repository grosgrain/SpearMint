using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cn_ValidateCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        validatedCode v = new validatedCode();
        string code = v.CreateVerifyCode();            //取随机码  
        v.CreateImageOnPage(code, this.Context);       // 输出图片  
        Session["CheckCode"] = code;                   //Session 取出验证码  
    }
}