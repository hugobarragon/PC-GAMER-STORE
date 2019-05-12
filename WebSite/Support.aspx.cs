using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Support : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {
            MailMessage mensagem = new MailMessage();
            mensagem.From = new MailAddress(TextBox1.Text);
            mensagem.To.Add("pcgamer.comercials@gmail.com");
            mensagem.To.Add(TextBox1.Text);
            mensagem.Subject = TextBox2.Text;
            mensagem.Body = TextBox3.Text;
            mensagem.IsBodyHtml = true;
            

            // Envio pelo Gmail
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Host = "smtp.gmail.com";
           
            smtpClient.Port = 587; // Porta definida pelo Gmail
            smtpClient.EnableSsl = true; // Server Secured Layer
            smtpClient.Credentials = new
            System.Net.NetworkCredential("pcgamer.comercials@gmail.com", "pcgamer1234");
            smtpClient.Send(mensagem);
            Label_status.Text = "Message sent with success!";
            
        }
        catch (Exception Ex)
        {
            Label_status.Text = "Error sending of the message!  " + Ex.Message;
        }        

    }
}