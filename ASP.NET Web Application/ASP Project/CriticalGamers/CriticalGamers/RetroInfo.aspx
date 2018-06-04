<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RetroInfo.aspx.cs" Inherits="CriticalGamers.RetroInfo" %>

<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="jumbotron" id="retrobanner">

          
            <link href="StyleSheet.css" rel="stylesheet" />
             

        <h1 align="center" style="color: #ff2700"><span class="newStyle1"><strong>The Retro Corner</strong></span></h1>
             
            
        

   
         </div>

    <style>
         .Star{width:22px;height:22px;cursor:pointer;}
        .FilledStar
        {
            background-image:url(Content/FilledStar.png);
        }
        .EmptyStar{

            background-image:url(Content/EmptyStar.png);
        }
        .WaitingStar{
            background-image:url(Content/FilledStar.png);
        }
    </style>

    <body id ="retro">
   
    
     </body>

    <asp:FormView ID="retroInfo" runat="server" ItemType="CriticalGamers.Models.RetroGame" SelectMethod ="GetRetroGames" RenderOuterTable="false"> 
        <ItemTemplate> 
            <div> 
                <h1><%#:Item.GameName %></h1> 


            </div> 
            <br /> 
            <table> 
                <tr> 
                    <td> 
                        <img src="Content/<%#:Item.ImagePath %>" style="border:solid; height:300px" alt="<%#:Item.GameName %>"/> 
                        <b>ID:</b><br /><%#:Item.RetroGameID %>
                    </td> 
                    <td>
                        &nbsp;

                    </td> 
                    <td style="vertical-align: top; text-align:left;"> 

                        <b>Summary:</b><br /><%#:Item.Summary %> 
                        <br /> 
                        <b>Publisher:</b><br /><%#:Item.Publisher %>
                        <br />
                        <b>Developer:</b><br /><%#:Item.Developer %>
                        <br />
                        <b>Release Date:</b><br /><%#:Item.Release_Date %>
                        <br />
                        <b>Also On:</b><br /><%#:Item.Also_On %>
                        <br />
                        <b>Rating:</b><br /><%#:Item.Rating %>
                        <br />
                         <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                       <ContentTemplate>
                           <cc1:Rating ID="Rating1" runat="server" CurrentRating="0" MaxRating="5" WaitingStarCssClass="WaitingStar"
                               EmptyStarCssClass="EmptyStar" StarCssClass="Star" FilledStarCssClass="FilledStar" AutoPostBack="true">

                           </cc1:Rating>
                       </ContentTemplate>
                   </asp:UpdatePanel>
                        
                        </ItemTemplate>
        </asp:FormView>


</asp:Content>
