<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CriticalGamers._Default" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <h1><%: Title %> </h1>

    
   

    
    
    <div class="jumbotron" id="banner">

        <head>
            <link href="StyleSheet.css" rel="stylesheet" />
            <!-- #BeginEditable "doctitle" -->
            <h1 align="center" style="color: #FF0000"><font face="Agency FB"><span class="newStyle1"><strong>CRITICAL GAMERS</strong></span></font></h1>
            <!-- #EndEditable -->
        </head>

    </div>

    <div>


        <body id="home">
            <p>

                <h2>
                    <font color="red" face="Impact">
                Welcome to Critical Gamers, your number one spot for PS4, Xbox One and Retro games ratings and reviews.                        </font>
                </h2>
            </p>
        </body>
    </div>

    <div class="row">
        <h2 align="center" style="color: #011eff"><font face="Agency FB">THIS MONTH'S FEATURED
        </h2>

        <div class="col-xs-6 col-md-3">
            <a href="IF.aspx" class="thumbnail">
                <img src="Content/infamous.jpg" height="200" width="150">
            </a>

        </div>

        <div class="col-xs-6 col-md-3">
            <a href="MGSV.aspx" class="thumbnail">
                <img src="Content/mgsv.jpg" height="200" width="150">
            </a>

        </div>

        <div class="col-xs-6 col-md-3">
            <a href="TF.aspx" class="thumbnail">
                <img src="Content/titanfall.jpg" height="150" width="150">
            </a>

        </div>

        <div class="col-xs-6 col-md-3">
            <a href="TLOU.aspx" class="thumbnail">
                <img src="Content/tlou.png" height="150" width="150">
            </a>

        </div>

    </div>


    <br />

    <center>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
            </asp:Timer>

            <asp:Image ID="Image1" Height="350px" Width="700px" runat="server" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />

            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Content/stop.png" ImageAlign="middle" Height="50px" width="50px" OnClick="Button1_Click" />

        </ContentTemplate>

    </asp:UpdatePanel>
      </center>

   


    </font>

   


</asp:Content>
