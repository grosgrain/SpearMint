using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class cn_personalinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { if(!IsPostBack)
    { 
        if (Session["Username"] != null)
        {  
            lblUser.Text = Session["Username"].ToString();
            lblAddress.Text = Session["Address"].ToString();
            lblCity.Text = Session["City"].ToString();
            lblState.Text = Session["State"].ToString();
            lblPhone.Text = Session["Phone"].ToString();
            lblEmail.Text = Session["Email"].ToString();           
        }
    }
    }
   
    protected void btnChange_Click(object sender, EventArgs e)
    {
        txtAddress.Text = lblAddress.Text;
        lblAddress.Visible = false;
        txtAddress.Visible = true;

        txtCity.Text = lblCity.Text;
        lblCity.Visible = false;
        txtCity.Visible = true;

        DropDownList1.SelectedValue = lblState.Text;
        lblState.Visible = false;
        DropDownList1.Visible = true;

        txtPhone.Text = lblPhone.Text;
        lblPhone.Visible = false;
        txtPhone.Visible = true;

        txtEmail.Text = lblEmail.Text;
        lblEmail.Visible = false;
        txtEmail.Visible = true;

        btnChange.Visible = false;
        btnChangeinfo.Visible = true;
    }
    protected void btnChangeinfo_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string Address = txtAddress.Text;
            string City = txtCity.Text;
            string State = DropDownList1.SelectedValue.ToString();
            string Phone = txtPhone.Text;
            string Email = txtEmail.Text;

            SqlConnection myconn = new SqlConnection();
            myconn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
            myconn.Open();
            string qry = "UPDATE [QingboheCustomer] SET QingboheCustomer.Qingbohe_Address = N'" + Address + "', QingboheCustomer.Qingbohe_City = N'" + City + "', QingboheCustomer.Qingbohe_State = '" + State + "', QingboheCustomer.Qingbohe_Phone = '" + Phone + "', QingboheCustomer.Qingbohe_Email = '" + Email + "' WHERE Qingbohe_Username = '" + lblUser.Text.Trim() + "'";
            SqlCommand cmd = new SqlCommand(qry, myconn);
            int a = cmd.ExecuteNonQuery();

            if (a > 0)
            {             
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('修改成功！')",true);
            }          
            myconn.Close();

            lblAddress.Text = txtAddress.Text;
            lblAddress.Visible = true;
            txtAddress.Visible = false;

            lblCity.Text = txtCity.Text;
            lblCity.Visible = true;
            txtCity.Visible = false;

            lblState.Text = DropDownList1.SelectedValue;
            lblState.Visible = true;
            DropDownList1.Visible = false;

            lblPhone.Text = txtPhone.Text;
            lblPhone.Visible = true;
            txtPhone.Visible = false;

            lblEmail.Text = txtEmail.Text;
            lblEmail.Visible = true;
            txtEmail.Visible = false;

            btnChange.Visible = true;
            btnChangeinfo.Visible = false;   
        }

        SqlConnection myconn2 = new SqlConnection();
        myconn2.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=\\psf\Home\Desktop\Qingbohe1\App_Data\Database.mdf;Integrated Security=True";
        myconn2.Open();
        string qry2 = "select * from [QingboheCustomer] where QingboheCustomer.Qingbohe_Username= '" + lblUser.Text.Trim() + "' ";
        SqlCommand cmd2 = new SqlCommand(qry2, myconn2);
        SqlDataReader sqlDr2 = cmd2.ExecuteReader();

        if (sqlDr2.Read())
        {
            Session["Username"] = sqlDr2[1].ToString();
            Session["Password"] = sqlDr2[2].ToString();
            Session["Address"] = sqlDr2[3].ToString();
            Session["City"] = sqlDr2[4].ToString();
            Session["State"] = sqlDr2[5].ToString();
            Session["Phone"] = sqlDr2[6].ToString();
            Session["Email"] = sqlDr2[7].ToString();
        }

        myconn2.Close();
    }
}
