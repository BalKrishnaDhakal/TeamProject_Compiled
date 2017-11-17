using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Term_Project
{
    public partial class Balkrishna : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void MessageButton_Click(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.To.Add(new MailAddress("onlinebookstore.we5@gmail.com"));
            msg.From = new MailAddress(form_email.Text);
            msg.Subject = form_email.Text;
            msg.Body = form_message.Text;
            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "onlinebookstore.we5@gmail.com"; //Your Email ID  
            ntwd.Password = "onlinebookstore"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            try
            {
                smt.Send(msg);
                MessageLabel.Text = "Message sent Successfully!" + "\n Dear  " + form_name.Text + " " + form_lastname.Text + "," + "Thank you for your message, Your information has  received and we will get back to you soon";
                MessageLabel.ForeColor = System.Drawing.Color.White;
                MessageLabel.Attributes.Add("class", "inner-block-success");
            }
            catch (Exception ex)
            {
                MessageLabel.Text += "Exception caught in MessageButton_Click(): {0}" + ex.ToString();
                MessageLabel.Attributes.Add("class", "inner-block-success");

            }


        }
        protected void uploadButton_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                MessageLabel.Attributes.Add("class", "inner-block-success");
                MessageLabel.Text = "File Uploaded Successfully" + "\n Dear " + form_name.Text + " " + form_lastname.Text + "," + "Thank you for your message, Your information has  received and we will get back to you soon"; ;
                MessageLabel.ForeColor = System.Drawing.Color.White;
            }
            else
            {
                MessageLabel.Text = " Please, Select the file first before upload it!";
                MessageLabel.Attributes.Add("class", "inner-block-error");
                MessageLabel.ForeColor = System.Drawing.Color.Yellow;

            }

        }

    }
}