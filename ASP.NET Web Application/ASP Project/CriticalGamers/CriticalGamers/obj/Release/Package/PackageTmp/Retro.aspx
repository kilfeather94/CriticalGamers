<%@ Page Title="Retro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Retro.aspx.cs" Inherits="CriticalGamers.Retro" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    

    <div class="jumbotron" id="retrobanner">

          
            <link href="StyleSheet.css" rel="stylesheet" />
             

        <h1 align="center" style="color: #ff2700"><span class="newStyle1"><strong>The Retro Corner</strong></span></h1>
             
            
        

   
         </div>



     <body id ="retro">
   
    <div class="row">
        <h2 align="center" style="color: #00ff21">
           RETRO GAMES OF THE MONTH
        </h2>

  <div class="col-xs-6 col-md-3">
    <a href="Tekken3.aspx" class="thumbnail">
      <img src ="Content/tekken3.jpg" height="200" width="150">
        
    </a>
    
  </div>

        
        <div class="col-xs-6 col-md-3">
    <a href="MGS1.aspx" class="thumbnail">
      <img src ="Content/mgs1.jpg" height="200" width="150">
        
    </a>
    
  </div>

        </div>
    
     </body>


</asp:Content>