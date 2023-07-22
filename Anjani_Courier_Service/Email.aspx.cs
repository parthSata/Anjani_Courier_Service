using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace Anjani_Courier_Service
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SendEmail()
        {
            try
            {
                // Create a MailMessage object
                MailMessage message = new MailMessage();
                message.From = new MailAddress("vimalsata737@gmail.com", "Parth");
                message.To.Add(new MailAddress("vimalsata9913@gmail.com")); // Add the recipient's email address
                message.Subject = "Subject of the Email";
                message.Body = "This is the body of the email.";

                // Optional: If you want to send HTML-formatted email, set the IsBodyHtml property to true
                // message.IsBodyHtml = true;

                // Optional: Add attachments to the email (if needed)
                // Attachment attachment = new Attachment("path_to_your_file");
                // message.Attachments.Add(attachment);

                // Create a SmtpClient object and set the necessary properties
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("vimalsata737@gmail.com", "Vimal1@sata");

                // Send the email
                client.Send(message);

                // Optional: Display a success message to the user
                Label1.Text = "Email sent successfully!";
            }
            catch (Exception ex)
            {
                // Optional: Display the error message to the user or handle it in your desired way
                Label1.Text = "An error occurred while sending the email: " + ex.Message;
            }
        }

        protected void send_Click(object sender, EventArgs e)
        {
            SendEmail();
            /*  try
              {
                  MailMessage message = new MailMessage(to.Text, from.Text, subject.Text, body.Text);
                  if (upload.HasFile)
                  {
                      HttpFileCollection fc = Request.Files;
                      for (int i = 0; i <= fc.Count - 1; i++)
                      {
                          HttpPostedFile pf = fc[i];
                          Attachment attach = new Attachment(pf.InputStream, pf.FileName);
                          message.Attachments.Add(attach);
                      }
                  }

                  SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

                  client.EnableSsl = true;
                  client.DeliveryMethod = SmtpDeliveryMethod.Network;
                  client.UseDefaultCredentials = false;
                  client.Credentials = new System.Net.NetworkCredential("abc@gmail.com", "12345");
                  if (upload.HasFile)
                  {
                      HttpFileCollection fc = Request.Files;
                      for (int i = 0; i <= fc.Count - 1; i++)
                      {
                          HttpPostedFile pf = fc[i];
                          Attachment attach = new Attachment(pf.InputStream, pf.FileName);
                          message.Attachments.Add(attach);
                      }
                  }
                  client.Send(message);
                  status.Text = "message was sent successfully";
              }
              catch (Exception ex)
              {
                  status.Text = ex.StackTrace;
              }*/
        }
    }
}