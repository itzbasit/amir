using System;
using Nits.Common;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using Nits.BLL;
using Nits.Model;
using System.Text;
using System.Net.Mail;



public partial class Clients : System.Web.UI.Page
{

   ClientsBLL clientsBLL = new ClientsBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Txtboxname.Focus();
        //if (!IsPostBack)
        //{
        //    int totalclients = (int)SqlHelper.ExecuteScalar(SqlHelper.Connect, CommandType.Text, "select count(Cid) from clients");

        //    lblCount.Text = "Total Client = " + totalclients.ToString();
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        bool IsError = false;
        Client clients = new Client();
        clients.CName = Txtboxname.Text;
        clients.CPhoneNo = Txtboxphoneno.Text;
        clients.CEmailid = Txtboxcemailid.Text;
        clients.CAddress = Txtboxcaddress.Text;
        clients.CompanyName = Txtboxusername.Text;
        clients.Remarks = Txtboxremarks.Text;
        IsError = ValidateClients(Txtboxname.Text);


        if (!IsError)
        {

            string str = clientsBLL.Addclient(clients);

            if (str == "true")
            {
                Lblsucess.Text = "Details Added Successfully";
               // SendMail();
                Lblerror.Text = "";
                Txtboxname.Text = "";
                Txtboxphoneno.Text = "";
                Txtboxcemailid.Text = "";
                Txtboxcaddress.Text = "";
                Txtboxusername.Text = "";
                Txtboxremarks.Text = "";
                Session["Status"] = "Added Sucessfully";
               

                // Response.Redirect("Mainpage.aspx");
            }
            else
            {
                Session["Status"] = "";
                Lblsucess.Text = "";
                Lblerror.Text = "Client Already Exists";
            }
            
        }
        
        else
        {
            Lblerror.Text = "Some fields are empty";
        }

        
    }

    protected void btnviewclient_Click(object sender, EventArgs e)
    {
        Response.Redirect("/clientsview.aspx");
    }

    protected bool ValidateClients(String val)
    {
        bool errorbool=false;
        if (String.IsNullOrEmpty(val))
        {
            errorbool = true;
        }
        return errorbool;
    }

    protected void Home_onClick(object sender, EventArgs e)
    {
        Response.Redirect("/Mainpage.aspx");
    }
     


    public void SendMail()
    {
        MailMessage mail = new MailMessage("trekdekashmir@gmail.com",Txtboxcemailid.Text);
        mail.Subject = "Account created";
        StringBuilder sbbody = new StringBuilder();
        sbbody.Append("Dear"+Txtboxname.Text+"<br><br>");
        sbbody.Append("<br> Your Account Has been Created");
        mail.Body = sbbody.ToString();
        mail.IsBodyHtml = true;
        SmtpClient c = new SmtpClient("smtp.gmail.com", 587);
        c.Credentials = new System.Net.NetworkCredential("trekdekashmir@gmail.com","ubi@504062");
        c.EnableSsl = true;
        c.Send(mail);

    }
}


