<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Profile.aspx.cs" Inherits="CriticalGamers.Account.Profile" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>

    <link href="StyleSheet.css" rel="stylesheet" />

<html xmlns="http://www.w3.org/1999/xhtml">

    

    <head>
       <title>
           <h1>
               My Profile Page
           </h1>
       </title>
    </head>

<body id="profile">
    
   <div class="jumbotron" id="profilejumbotron">

       

        <h1 style="color: #808080"><span class="newStyle1"><strong>Profile Page</strong></span></h1>
             
            
        </div>
    
</body>
</html>

   
   
     <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="conditional">
                        <ContentTemplate>
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                            <asp:Button ID="btnUpload" runat="server" Text="Upload Profile Picture" OnClick="btnUpload_Click" /><br />
                        </ContentTemplate>
                        <Triggers> <asp:PostBackTrigger ControlID="btnUpload" /> </Triggers>  
                    </asp:UpdatePanel>
                    <br />
                      <asp:Image ID="imgViewFile" runat="server" />
    

    <asp:FormView ID="FormView10" datasourceid="ProfileSource"   AllowPaging="true" DataKeyNames="ProfileID" emptydatatext="No information found." runat="server"
       
       RenderOuterTable ="false">


        <ItemTemplate>
            <table>
                <tr>
                    <td>
                         <td style="vertical-align: top; text-align:left;">
                       
                       <b style ="color: #e83131">Name</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><%# Eval("FullName") %>
                       <br /></p>
                           
                       </td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <td style="vertical-align: top; text-align:left;">
                             <b style ="color: #e83131">Age</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><%# Eval("Age") %>
                                 <br /></p>
                    </td>
                </tr>
                  <tr>
                    <td>
                        <td style="vertical-align: top; text-align:left;">
                             <b style ="color: #e83131">Nationality</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><%# Eval("Nationality") %>
                                 <br /></p>
                    </td>
                </tr>
                  <tr>
                    <td>
                        <td style="vertical-align: top; text-align:left;">
                             <b style ="color: #e83131">Favourite Platforms:</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><%# Eval("FavePlatform") %>
                                 <br /></p>
                    </td>
                </tr>
                  <tr>
                    <td>
                        <td style="vertical-align: top; text-align:left;">
                             <b style ="color: #e83131">Favourite Games:</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><%# Eval("FaveGame") %>
                                 <br /></p>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <td style="vertical-align: top; text-align:left;">
                             <b style ="color: #e83131">About Me:</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><%# Eval("AboutMe") %>
                                 <br /></p>
                    </td>
                </tr>

                   <tr>
              <td colspan="2">
                <asp:linkbutton id="Edit"
                  text="Edit Profile"
                  commandname="Edit" class="btn btn-success btn-large"
                  runat="server"/> 
              </td>
            </tr>

            </table>

            <hr />

        </ItemTemplate>

         <edititemtemplate>
          <table>
             <tr>
              <td>
                <b>Name:</b>
              </td>
              <td>
                <asp:textbox id="FullNameUpdateTextBox"
                  text='<%# Bind("FullName") %>'
                  runat="server"/> 
              </td>
            </tr>
              <tr>
                  <td>
                      <b>Age:</b>
                  </td>
                  <td>
                      <asp:textbox id="AgeUpdateTextBox"
                  text='<%# Bind("Age") %>'
                  runat="server"/> 
                  </td>
              </tr>
                <tr>
                  <td>
                      <b>Nationality:</b>
                  </td>
                  <td>
                      <asp:textbox id="NationalityUpdateTextBox"
                  text='<%# Bind("Nationality") %>'
                  runat="server"/> 
                  </td>
              </tr>
               <tr>
                  <td>
                      <b>Favourite Platforms:</b>
                  </td>
                  <td>
                      <asp:textbox id="FavePlatformUpdateTextBox"
                  text='<%# Bind("FavePlatform") %>'
                  runat="server"/> 
                  </td>
              </tr>
              <tr>
                  <td>
                      <b>Favourite Games:</b>
                  </td>
                  <td>
                      <asp:textbox id="FaveGameUpdateTextBox"
                  text='<%# Bind("FaveGame") %>'
                  runat="server"/> 
                  </td>
              </tr>
              <tr>
                  <td>
                      <b>About Me:</b>
                  </td>
                  <td>
                      <asp:textbox id="AboutMeUpdateBox"
                  text='<%# Bind("AboutMe") %>'
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
          
                  
              </td>
            </tr>
          </table>       
        </edititemtemplate>

        </asp:FormView>


     <asp:FormView ID="FormView11" datasourceid="ReviewSource"   AllowPaging="true" DataKeyNames="ReviewID" emptydatatext="No information found." runat="server"
       
       RenderOuterTable ="false">

        <ItemTemplate>
           <h1>Game Reviews</h1>
                       
                       <b style ="color: #e83131">Title</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><%# Eval("Title") %>
                       </p>
             
                             <b style ="color: #e83131">Game</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><%# Eval("Game") %>
                                 </p>
              
                             <b style ="color: #e83131">Description</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><%# Eval("Description") %>
                                 </p>
                
                             <b style ="color: #e83131">Verdict</b><p style =" font-family:'Agency FB'; font-size:x-large; color: #ffbb00"><%# Eval("Verdict") %>
                                 

            <hr />
              
               <asp:LinkButton
            id="lnkNew"
            Text="New Review"
            CommandName="New" class="btn btn-success btn-large"
            Runat="server" />
        </ItemTemplate>
        <InsertItemTemplate>
        <asp:Label
            id="lblTitle"
            Text="Review Name:"
            AssociatedControlID="txtTitle"
            Runat="server" />
        <br />
        <asp:TextBox
            id="txtTitle"
            Text='<%# Bind("Title") %>'
            Runat="server" />
        <br />
        <asp:Label
            id="lblGame"
            Text="Game:"
            AssociatedControlID="txtGame"
            Runat="server" />
        <br />
        <asp:TextBox
            id="txtGame"
            Text='<%# Bind("Game") %>'
            Runat="server" />
        <br />
        <asp:Label
            id="lblDescription"
            Text="Description:"
            AssociatedControlID="txtDescription"
            Runat="server" />
        <br />
        <asp:TextBox
            id="txtDescription"
            Text='<%# Bind("Description") %>'
            Runat="server" />
            <br />
        <asp:Label
            id="lblVerdict"
            Text="Verdict:"
            AssociatedControlID="txtVerdict"
            Runat="server" />
        <br />
        <asp:TextBox
            id="txtVerdict"
            Text='<%# Bind("Verdict") %>'
            Runat="server" />
        <br /><br />
        <asp:LinkButton
            id="lnkInsert"
            Text="Insert New Review"
            CommandName="Insert"
            Runat="server" />
        <asp:LinkButton
            id="lnkCancel"
            Text="Cancel Insert"
            CommandName="Cancel"
            Runat="server" />
        </InsertItemTemplate>
    </asp:FormView>

        



       <asp:SqlDataSource ID="ReviewSource" runat="server"
            ConnectionString="<%$ ConnectionStrings:CriticalGamers %>"
            SelectCommand="SELECT [ReviewID], [Title], [Game], [Description], [Verdict] FROM [Reviews]"
            InsertCommand="INSERT INTO Reviews(Title, Game, Description, Verdict) VALUES ( @Title, @Game, @Description, @Verdict)">
        </asp:SqlDataSource>



    <asp:sqldatasource id="ProfileSource"
        selectcommand="Select [ProfileID], [FullName], [Age], [Nationality], [FavePlatform], [FaveGame], [AboutMe] From [Profiles]"
        updatecommand="Update [Profiles] Set [FullName]=@FullName, [Age]=@Age, [Nationality]=@Nationality, [FavePlatform]=@FavePlatform, [FaveGame]=@FaveGame, [AboutMe]=@AboutMe Where [ProfileID]=@ProfileID"
        connectionstring="<%$ ConnectionStrings:CriticalGamers%>" 
        runat="server"/>

    </asp:Content>