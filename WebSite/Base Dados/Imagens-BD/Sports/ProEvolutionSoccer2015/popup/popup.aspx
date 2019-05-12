<%@ Page Language="C#" AutoEventWireup="true" CodeFile="popup.aspx.cs" Inherits="Base_Dados_Imagens_BD_Action_H1Z1_popup_popup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: Arial, sans-serif;
        }
    </style>
</head>
<body>

    <form id="loginform" method="post" style="text-align:left; background:inherit; margin:0; border:0;" runat="server"> 
		<div class="auth" 
		
            style="border-style: none; border-color: inherit; border-width: 0; background: #fff url('images/white.jpg')  right top; width:300px;height:500px; margin:0">
		<div style="padding:10px 0 0 5px;">
				
				<input type="hidden" name="sourcepage" value="" />
						
                        <asp:Label ID="Label1" runat="server" Text="Game Name:" 
                    CssClass="style1"></asp:Label>
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Pro Evolution Soccer 2015" 
                    CssClass="style1"></asp:Label>
						<br/>
						<br/>
					<asp:Label ID="Label6" runat="server" Text="Price:" CssClass="style1"></asp:Label>
&nbsp;
                <asp:Label ID="Label7" runat="server" Text="39,99" CssClass="style1"></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="€"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Enter your Email:" 
                    CssClass="style1"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="130px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" 
                    ErrorMessage="Required Field Validator Email Box" CssClass="style1"></asp:RequiredFieldValidator>
                <br />
                <br />
					<asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    CssClass="style1">
                        <asp:ListItem Value="1">Posing on the store</asp:ListItem>
                        <asp:ListItem Value="2">Payment on delivery</asp:ListItem>
                        <asp:ListItem Value="3">Normal mail delivery</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="RadioButtonList1" 
                    ErrorMessage="Required Field Validator " CssClass="style1"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Nif:" Visible="False" 
                    CssClass="style1"></asp:Label>
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                &nbsp;
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required Field Validator NIF" 
                    CssClass="style1"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Shipping price:" CssClass="style1"></asp:Label>
&nbsp;
                <asp:Label ID="Label3" runat="server" CssClass="style1">0,00</asp:Label>
                <asp:Label ID="Label12" runat="server" Text="€"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Total Payable (with shipping): " 
                    CssClass="style1"></asp:Label>
&nbsp;<asp:Label ID="Label11" runat="server" CssClass="style1"></asp:Label>
                &nbsp;<asp:Label ID="Label13" runat="server" Text="€" CssClass="style1"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button" runat="server" onclick="Button1_Click1" 
                    Text="Order" CssClass="style1" />
                <br />
                <br />
                <asp:Label ID="Label_Status" runat="server" CssClass="style1"></asp:Label>
                <br />
                <br />
                
					</div>
					
					</div>
				</form>	
    </form>
   
</body>
</html>
