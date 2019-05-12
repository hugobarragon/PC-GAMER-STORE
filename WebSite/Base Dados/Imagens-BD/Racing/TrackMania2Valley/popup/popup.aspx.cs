using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Base_Dados_Imagens_BD_Action_H1Z1_popup_popup : System.Web.UI.Page
{

    decimal total = 0.00M;
    decimal portes = 0.00M;
    decimal preçojogo = 0.00M;

    protected void Page_Load(object sender, EventArgs e)
    {

        preçojogo = decimal.Parse(Label7.Text);
        if (RadioButtonList1.SelectedValue == "3")
        {
            RequiredFieldValidator3.Visible = true;

        }
        else
        {

            RequiredFieldValidator3.Visible = false;

        }

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (RadioButtonList1.SelectedValue == "1")
        {
            Label5.Visible = false;
            TextBox1.Visible = false;

            portes = 0.00M;

            Label3.Text = "0,00";

        }
        if (RadioButtonList1.SelectedValue == "2")
        {
            Label5.Visible = false;
            TextBox1.Visible = false;

            portes = 5.36M;

            Label3.Text = "5,36";

        }
        if (RadioButtonList1.SelectedValue == "3")
        {
            Label5.Visible = true;
            TextBox1.Visible = true;

            portes = 2.29M;

            Label3.Text = "2,29";

        }


        total = Math.Round(preçojogo + portes,2);
        Label11.Text = total.ToString();

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {

        try
        {
            MailMessage mensagem = new MailMessage();
            mensagem.From = new MailAddress(TextBox2.Text);
            mensagem.To.Add("pcgamer.comercials@gmail.com");
            mensagem.To.Add(TextBox2.Text);
            mensagem.Subject = "Nova Encomenda! " + DateTime.Now;
            mensagem.Body = Label1.Text + "  " + Label2.Text + "<br />" + " Tipo de Entrega ao cliente: " + RadioButtonList1.SelectedItem + "<br />" + " Nif: " + TextBox1.Text + "<br />" + Label4.Text + "  " + Label3.Text + Label12.Text + "<br />" + Label10.Text + "  " + Label11.Text + Label13.Text + "<br />";
            mensagem.IsBodyHtml = true;


            // Envio pelo Gmail
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Host = "smtp.gmail.com";

            smtpClient.Port = 587; // Porta definida pelo Gmail
            smtpClient.EnableSsl = true; // Server Secured Layer
            smtpClient.Credentials = new
            System.Net.NetworkCredential("pcgamer.comercials@gmail.com", "pcgamer1234");
            smtpClient.Send(mensagem);
            Label_Status.Text = "Message sent with success!";

        }
        catch (Exception Ex)
        {
            Label_Status.Text = "Error sending of the message!  " + Ex.Message;
        }        

    }
}