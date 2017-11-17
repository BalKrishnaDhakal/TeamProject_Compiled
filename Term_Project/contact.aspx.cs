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
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Balkrishna.aspx");
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.To.Add(new MailAddress("onlinebookstore.we5@gmail.com"));
            msg.From = new MailAddress(form_email.Text);
            msg.Subject = form_email.Text;
            msg.Body = string.Format(" Sender's Name: " + form_name.Text + " " + form_lastname.Text + "\n Received Date: " + DateTime.Today.Date + "\n Email Message: " + form_message.Text);
            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "onlinebookstore.we5@gmail.com"; //Your Email ID  
            ntwd.Password = "onlinebookstore"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
            MessageTextBox.Text = "Message sent Successfully!" + "\n Dear  " + form_name.Text + " " + form_lastname.Text + "," + "Thank you for your message, Your information has  received and we will get back to you soon";
            MessageTextBox.ForeColor = System.Drawing.Color.White;
            MessageTextBox.Attributes.Add("class", "inner-block-success");
            MessageTextBox.ForeColor = System.Drawing.Color.White;
            MessageTextBox.Attributes.Add("class", "inner-block-success");
            MessageTextBox.Text = MessageTextBox.Text = "Message sent Successfully!" + "\n Dear  " + form_name.Text + " " + form_lastname.Text + "," + "Thank you for your message, Your information has  received and we will get back to you soon";
        }


    }
}