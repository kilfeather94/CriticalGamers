<%@ Page Title="Retro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Retro.aspx.cs" Inherits="CriticalGamers.Retro" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    

    <div class="jumbotron" id="retrobanner">

          
            <link href="StyleSheet.css" rel="stylesheet" />
             

        <h1 align="center" style="color: #ff2700"><span class="newStyle1"><strong>The Retro Corner</strong></span></h1>
             
            
        

   
         </div>
    <div>

        <asp:TextBox ID="TextBox1" runat="server" Width="237px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" Width="97px" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RetroGameID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="RetroGameID" HeaderText="RetroGameID" InsertVisible="False" ReadOnly="True" SortExpression="RetroGameID" />
                <asp:BoundField DataField="GameName" HeaderText="GameName" SortExpression="GameName" />
                <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" />
                <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                <asp:BoundField DataField="Developer" HeaderText="Developer" SortExpression="Developer" />
                <asp:BoundField DataField="Release_Date" HeaderText="Release_Date" SortExpression="Release_Date" />
                <asp:BoundField DataField="Also_On" HeaderText="Also_On" SortExpression="Also_On" />
                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CriticalGamers %>" DeleteCommand="DELETE FROM [RetroGames] WHERE [RetroGameID] = @RetroGameID" InsertCommand="INSERT INTO [RetroGames] ([GameName], [Summary], [Publisher], [Developer], [Release_Date], [Also_On], [Rating]) VALUES (@GameName, @Summary, @Publisher, @Developer, @Release_Date, @Also_On, @Rating)" SelectCommand="SELECT [RetroGameID], [GameName], [Summary], [Publisher], [Developer], [Release_Date], [Also_On], [Rating] FROM [RetroGames] WHERE ([GameName] LIKE '%' + @GameName + '%')" UpdateCommand="UPDATE [RetroGames] SET [GameName] = @GameName, [Summary] = @Summary, [Publisher] = @Publisher, [Developer] = @Developer, [Release_Date] = @Release_Date, [Also_On] = @Also_On, [Rating] = @Rating WHERE [RetroGameID] = @RetroGameID">
            <DeleteParameters>
                <asp:Parameter Name="RetroGameID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GameName" Type="String" />
                <asp:Parameter Name="Summary" Type="String" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="Developer" Type="String" />
                <asp:Parameter Name="Release_Date" Type="String" />
                <asp:Parameter Name="Also_On" Type="String" />
                <asp:Parameter Name="Rating" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="GameName" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="GameName" Type="String" />
                <asp:Parameter Name="Summary" Type="String" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="Developer" Type="String" />
                <asp:Parameter Name="Release_Date" Type="String" />
                <asp:Parameter Name="Also_On" Type="String" />
                <asp:Parameter Name="Rating" Type="String" />
                <asp:Parameter Name="RetroGameID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>

    <div id="PlatformMenu" style="text-align: center">
        <asp:ListView ID="platformList"
            ItemType="CriticalGamers.Models.Platform"
            runat="server"
            SelectMethod="GetPlatforms">
            <ItemTemplate>
                <b style="font-size: large; font-style: normal">
                    <a href="/Retro.aspx?id=<%#: Item.PlatformID %>">
                        <%#: Item.PlatformName %>
                    </a>
                </b>
            </ItemTemplate>
            <ItemSeparatorTemplate> | </ItemSeparatorTemplate>
        </asp:ListView>
    </div>



     <body id="retro">
   
    
     </body>

     <section> 
        <div>
             <hgroup>
                  <h2><%: Page.Title %></h2> 

             </hgroup>

            <asp:ListView ID="retrogameList" runat="server" 
                DataKeyNames="RetroGameID" GroupItemCount="4" ItemType="CriticalGamers.Models.RetroGame" SelectMethod="GetRetroGames"> 
                <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>No information available to display</td>
                        </tr>
                    </table>
                    </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="RetroInfo.aspx?retrogameID=<%#Item.RetroGameID %>">
                                        <img src="Content/<%#:Item.ImagePath %>"
                                            width="100" height="75" style="border: solid" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="RetroInfo.aspx?retrogameID=<%#:Item.RetroGameID %>">
                                        <span>
                                            <%#:Item.GameName %>
                                        </span>
                                    </a>
                                  
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                        </td>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer"
                                        runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                        
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
                </asp:ListView>
            </div>
        </section>



   
</asp:Content>