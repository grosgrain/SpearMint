using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ThoughtWorks.QRCode.Codec;
using ThoughtWorks.QRCode.Codec.Data;
using System.Drawing;
using System.Text;
using System.IO;


public partial class cn_userinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null) { 
        Bitmap bt;

        string enCodeString = "青薄荷用户_" + Session["Username"].ToString();

        QRCodeEncoder qrCodeEncoder = new QRCodeEncoder();

        bt = qrCodeEncoder.Encode(enCodeString, Encoding.UTF8);

        string filename = "青薄荷用户_" + Session["Username"].ToString();

        string path = Server.MapPath("~/QRimage/") + filename + ".jpg";

        bt.Save(path);

        this.myqrcode.ImageUrl = "~/QRimage/" + filename + ".jpg";

        lblUser.Text = Session["Username"].ToString();
        lblAddress.Text = Session["Address"].ToString();
        lblCity.Text = Session["City"].ToString();
        lblState.Text = Session["State"].ToString();
        lblPhone.Text = Session["Phone"].ToString();
        lblEmail.Text = Session["Email"].ToString();
        }
    }
}