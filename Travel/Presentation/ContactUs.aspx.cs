using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel.Presentation
{
    public partial class WebForm3 : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string from = txtFrom.Text;
            string message = txtMessage.Text;
            string userPassword = txtPassword.Text;

            SendMail(from, message,userPassword);
        }

        public void SendMail(string from, string message, string userPassword)
        {
            MailMessage mailMessage = new MailMessage(from, "hareshliya6@gmail.com");
            mailMessage.Subject = "Travel";
            mailMessage.Body = message;

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.UseDefaultCredentials = false;//Calling this line at the order here, otherwise email will not be sent....
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = from,
                Password = userPassword
            };
            smtpClient.EnableSsl = true;

            smtpClient.Send(mailMessage);
        }
    }
}