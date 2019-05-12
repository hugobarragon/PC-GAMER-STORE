<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="Menu_Files/mbcsmb5crf.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/Menu_Files/mbcsmb5crf.css" type="text/css" />
<script type="text/javascript" src="ToTop/jquery.min.js"></script>
<script type="text/javascript" src="ToTop/arrow60.js"></script>
<link rel="icon" type="image/jpg" href="Base Dados/Imagem-Site-Pc-Gamer/Pc-Gamer-Logo.jpg">
<link rel="stylesheet" href="table.css" type="text.css"/>
<meta charset="utf-8"/>
		<link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow:700" rel="stylesheet" />
		<link href="slideout-footer/assets/css/style.css" rel="stylesheet" />
		<if lt IE 9>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<endif>
<script type="text/javascript" src="Menu_Files/mbjsmb5crf.js"></script>
<script type="text/javascript" src="Menu_Files/mbjsmb5crf.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta name="description" content="SliderProject created with cssSlider, a free wizard program that helps you easily generate beautiful web slideshow" />
<link rel="stylesheet" href="Css_Slider_Files/engine1/style.css"/>
<link rel="stylesheet" href="/Table_Files/table.css" type="text/css"/>
 
    <title>PC GAMER</title>
    <style type="text/css">
        .style14
        {
            width: 90%;
        }
        .style15
        {
            font-size: large;
        }
        </style>
        </head>
    <body>
    <div id="main">
    <background="Base%20Dados/Imagem-Site-Pc-Gamer/gplaypattern_@2X.png" 
        style="text-align: center">
    
    <form id="form1" runat="server">
    <p>
    <!-- Start Banner -->
        &nbsp;<asp:Image ID="Image1" runat="server" Height="100px" ImageAlign="Middle" 
            ImageUrl="~/Base Dados/Imagem-Site-Pc-Gamer/Razer_Snake_Logo.png" 
            Width="100px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="100px" ImageAlign="Middle" 
            ImageUrl="~/Base Dados/Imagem-Site-Pc-Gamer/PC_Gamer_logo.jpg" Width="800px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image3" runat="server" Height="100px" ImageAlign="Middle" 
            ImageUrl="~/Base Dados/Imagem-Site-Pc-Gamer/SteelSeries_logo.png" 
            Width="100px" />
            <!-- End Banner -->
    </p>
    <p>
        &nbsp;</p>
        <!-- Start Menu -->
    <div id="mb5crfebul_wrapper">
        <ul id="mb5crfebul_table" class="mb5crfebul_menulist css_menu">
            <li>
                <div class="buttonbg gradient_button gradient45">
                    <div class="icon_1">
                        <a class="button_1" href="Home.aspx"></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="buttonbg gradient_button gradient45">
                    <a href="Home.aspx">Home</a></div>
            </li>
            <li>
                <div class="buttonbg gradient_button gradient45">
                    <div class="arrow">
                        <a class="button_3">Browse Games</a></div>
                </div>
                <ul class="gradient_menu gradient195">
                    <li><a href="All_Action.aspx" title="">Action</a></li>
                    <li><a href="All_Adventure.aspx" title="">Adventure</a></li>
                    <li><a href="All_Indie.aspx" title="">Indie</a></li>
                    <li><a href="All_Racing.aspx" title="">Racing</a></li>
                    <li><a href="All_Sports.aspx" title="">Sports</a></li>
                </ul>
            </li>
            <li>
                <div class="buttonbg gradient_button gradient45">
                    <a href="Support.aspx">Support</a></div>
            </li>
            <li>
                <div class="buttonbg gradient_button gradient45">
                    <div class="icon_5">
                        <a class="button_5" href="Link_Search.aspx">Search</a></div>
                </div>
            </li>
            <li>
                <!--<div class="buttonbg gradient_button gradient45">
                    <div class="icon_6">
                        <a class="button_6" href="Link_Login">Login</a></div>
                </div>-->
            </li>
        </ul>
    </div>
    <!-- End Menu -->
    <p style="text-align: center" class="style15">
        
        <strong>Sports Games</strong></p>
    <table align="center" class="style14">
        <tr>
            <td style="text-align: left">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="5" 
                    DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="Horizontal" 
                    HorizontalAlign="Center">
                    <Columns>
                        <asp:ImageField DataImageUrlField="Imagem" HeaderText="Images">
                            <controlstyle height="200px" width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name">
                        </asp:BoundField>
                        <asp:BoundField DataField="Developer" HeaderText="Developer" 
                            SortExpression="Developer"></asp:BoundField>
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" 
                            DataFormatString="{0:c}">
                        </asp:BoundField>
                        <asp:BoundField DataField="Release_Date" HeaderText="Release_Date" 
                            SortExpression="Release_Date"></asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="Link" HeaderText="View Details" 
                            Text="Details"></asp:HyperLinkField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <sortedascendingcellstyle backcolor="#F7F7F7" />
                    <sortedascendingheaderstyle backcolor="#4B4B4B" />
                    <sorteddescendingcellstyle backcolor="#E5E5E5" />
                    <sorteddescendingheaderstyle backcolor="#242121" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/Base Dados/Database-PC-Gamer.accdb" 
                    SelectCommand="SELECT [Name], [Developer], [Price], [Release Date] AS Release_Date, [Imagem], [Link] FROM [Sports]">
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>
    <p style="text-align: center">
        
    </p>
       
  
    
  
    <asp:Image ID="Image11" runat="server" Height="180px" ImageAlign="Middle" 
        ImageUrl="~/Base Dados/Imagem-Site-Pc-Gamer/waranty pc gamer.png" 
        Width="1265px" />
    <br />   
    </form>
    </div>
    <!-- Start Footer -->
 <footer>
			
			<ul>
				<li>
					<p class="home">Home</p>
					<a class="logo" href="#">PCGAMER <i>&copy; 2015</i></a>
				</li>
				<li>
					<p class="services">Services</p>

					<ul>
						<li><a href="#">PC Game Seller</a></li>
						<li><a href="#">Web development</a></li>
					</ul>
				</li>
				<li>
					<p class="reachus">Reach us</p>

					<ul>
						<li><a href="#">Email</a></li>
                        <li>pcgamer.comercial@gmail.com</li>
						<li><a href="#">Contact</a></li>
						<li>234-323-074</li>
					</ul>
				</li>
				<li>
					<p class="clients">Clients</p>

					<ul>
						<li><a href="#">Support Center</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#">Agrupamentos Escolas Esgueira</a></li>
                        <li><a href="#">12º G</a></li>
                        <li><a href="#">Hugo Barragon</a></li>

					</ul>
				</li>
			</ul>

		</footer>
        <!-- End Footer -->
        </body>
</html>
