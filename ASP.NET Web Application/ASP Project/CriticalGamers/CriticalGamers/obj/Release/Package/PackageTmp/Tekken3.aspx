<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tekken3.aspx.cs" Inherits="CriticalGamers.Tekken3" %>

<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>


 

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <link href="StyleSheet.css" rel="stylesheet" />
    <html>

         <style>
        .Genel{width:22px;height:22px;cursor:pointer;}
        .YildizDoldur
        {
            background-image:url(Content/FilledStar.png);
        }
        .YildizBosalt{

            background-image:url(Content/EmptyStar.png);
        }
        .YildizSec{
            background-image:url(Content/FilledStar.png);
        }
    </style>





        
    <div class="jumbotron" id="t3banner">

          <head>
            
             

        <h1 align="center" style="color: #ff2700"><font face ="System"><span class="newStyle1"><strong>Tekken 3</strong></span></font></h1>
             
            </head>
        

   
         </div>

<a href="#summarytag" role="button" class="btn btn-success btn-large">Summary</a>

     <body id ="t3">

         
   
  
     <asp:FormView ID="tekken3" runat="server"
       ItemType="CriticalGamers.Models.Tekken3Game" SelectMethod ="GetTekken3Game"
       RenderOuterTable ="false">
       <ItemTemplate>
           <div>
               <h1><%#:Item.GameName %></h1>
               <b style ="color: #e83131" >Publisher:</b><b style ="color: #00e8ff"><br /><%#Item.Publisher %><br /></b>
               <b style ="color: #e83131">Developer:</b><b style ="color: #00e8ff"><br /><%#Item.Developer %><br /></b>
               <b style ="color: #e83131">Release Date:</b><b style="color: #00e8ff"><br style ="color: #fcff00" /><%#Item.Release_Date %><br /></b>
               <b style="color: #e83131">Also On:</b><b style="color:#00e8ff "><br style ="color: #fcff00" /><%#Item.Also_On %><br /></b>
               <img src="Content/<%#:Item.ImagePath%>" style ="border:solid; height:300px" />
           </div>
           <br />
           <table>
               <tr>
                  
                   <td>
                       &nbsp;
                   </td>
                   
                       <br />
                 
                   <td>
                       &nbsp;
                   </td>
                 </tr>
               <tr>
                   
                        <td style="vertical-align: bottom; text-align:center; color: #00e8ff">
                       <b>Rating:</b><br /><%#Item.Rating %>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                       <ContentTemplate>
                           <cc1:Rating ID="Rating1" runat="server" CurrentRating="0" MaxRating="5" WaitingStarCssClass="YildizSec"
                               EmptyStarCssClass="YildizBosalt" StarCssClass="Genel" FilledStarCssClass="YildizDoldur" AutoPostBack="true">

                           </cc1:Rating>
                       </ContentTemplate>
                   </asp:UpdatePanel>

                       <br />

                        </td>
               </tr>
           </table>
       </ItemTemplate>

   </asp:FormView>

    <asp:FormView ID="FormView6" datasourceid="Tekken3GameSource"  AllowPaging="true" DataKeyNames="Tekken3GameID" emptydatatext="No summary found." runat="server"
       
       RenderOuterTable ="false">

        <ItemTemplate>
            <table>
                <tr>
                    <td id="summarytag">
                         <td style="vertical-align: top; text-align:left;">
                       
                       <b style ="color: #e83131">Summary:</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><br /><%# Eval("Summary") %>
                       <br /></p>
                           
                       </td>
                    </td>
                </tr>

                   <tr>
              <td colspan="2">
                <asp:linkbutton id="Edit"
                  text="Edit"
                  commandname="Edit" 
                    class="btn btn-success btn-large"
                  runat="server"/> 
              </td>
            </tr>

            </table>

        </ItemTemplate>

         <edititemtemplate>
          <table>
             <tr>
              <td>
                <b>Summary:</b>
              </td>
              <td>
                <asp:textbox id="SummaryUpdateTextBox"
                  text='<%# Bind("Summary") %>'
                  runat="server"/> 
              </td>
            </tr>
               <tr>
              <td colspan="2">
                <asp:linkbutton id="UpdateButton"
                  text="Update"
                  commandname="Update"
                  runat="server"/>
                <asp:linkbutton id="CancelButton"
                  text="Cancel"
                  commandname="Cancel"
                  runat="server"/> 
                   <asp:linkbutton id="DeleteButton"
                  text="Delete"
                  commandname="Delete"
                  runat="server"/> 
              </td>
            </tr>
          </table>       
        </edititemtemplate>

        </asp:FormView>

         </body>

     <asp:sqldatasource id="Tekken3GameSource"
        selectcommand="Select [Tekken3GameID], [Summary] From [Tekken3Game]"
        updatecommand="Update [Tekken3Game] Set [Summary]=@Summary Where [Tekken3GameID]=@Tekken3GameID"
         deletecommand="Delete From [Tekken3Game] Where Tekken3GameID=@Tekken3GameID;"
        connectionstring="<%$ ConnectionStrings:CriticalGamers%>" 
        runat="server"/>

        </html>



</asp:Content>