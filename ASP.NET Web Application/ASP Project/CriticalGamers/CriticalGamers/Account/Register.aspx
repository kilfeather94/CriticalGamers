<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CriticalGamers.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Username" CssClass="col-md-2 control-label">User Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Username" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Username"
                    CssClass="text-danger" ErrorMessage="The User Name field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DOB" CssClass="col-md-2 control-label">Date of Birth</asp:Label>
           <asp:TextBox ID="DOB" runat="server" CssClass="form-control"></asp:TextBox>Date format: MM/DD/YY
      <asp:RangeValidator ID="RangeValidator1" runat="server"
          ControlToValidate="DOB" Display="Dynamic" ErrorMessage="You must be 18 or older to register "
          MaximumValue="12/31/1996" MinimumValue="01/01/1880" SetFocusOnError="True"
          Type="Date"></asp:RangeValidator>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="Username"
                    CssClass="text-danger" ErrorMessage="Date of Birth is required." />
        </div>

        <div class="form-group">
         <asp:Label runat="server" AssociatedControlID="Country" CssClass="col-md-2 control-label">Country</asp:Label>
        <asp:DropDownList id="Country" runat="server" CssClass="form-control" Width="300px">

    <asp:ListItem Value="AL">Albania</asp:ListItem>
    <asp:ListItem Value="AM">Armenia</asp:ListItem>
    <asp:ListItem Value="AU">Australia</asp:ListItem>
    <asp:ListItem Value="AT">Austria</asp:ListItem>
    <asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>
    <asp:ListItem Value="BY">Belarus</asp:ListItem>
    <asp:ListItem Value="BE">Belgium</asp:ListItem>
    <asp:ListItem Value="BA">Bosnia And Herzegowina</asp:ListItem>
    <asp:ListItem Value="BG">Bulgaria</asp:ListItem>
    <asp:ListItem Value="HR">Croatia</asp:ListItem>
    <asp:ListItem Value="CY">Cyprus</asp:ListItem>
    <asp:ListItem Value="CZ">Czech Republic</asp:ListItem>
    <asp:ListItem Value="DK">Denmark</asp:ListItem>
    <asp:ListItem Value="EE">Estonia</asp:ListItem>
    <asp:ListItem Value="FI">Finland</asp:ListItem>
    <asp:ListItem Value="FR">France</asp:ListItem>
    <asp:ListItem Value="GE">Georgia</asp:ListItem>
    <asp:ListItem Value="DE">Germany</asp:ListItem>
    <asp:ListItem Value="GR">Greece</asp:ListItem>
    <asp:ListItem Value="HU">Hungary</asp:ListItem>
    <asp:ListItem Value="IC">Iceland</asp:ListItem>
    <asp:ListItem Value="IE">Ireland</asp:ListItem>
    <asp:ListItem Value="IT">Italy</asp:ListItem>
    <asp:ListItem Value="KO">Kosovo</asp:ListItem>
    <asp:ListItem Value="LV">Latvia</asp:ListItem>
    <asp:ListItem Value="LI">Liechtenstein</asp:ListItem>
    <asp:ListItem Value="LT">Lithuania</asp:ListItem>
    <asp:ListItem Value="LU">Luxembourg</asp:ListItem>
    <asp:ListItem Value="MK">Macedonia</asp:ListItem>
    <asp:ListItem Value="MT">Malta</asp:ListItem>
    <asp:ListItem Value="MD">Moldova, Republic Of</asp:ListItem>
    <asp:ListItem Value="MC">Monaco</asp:ListItem>
    <asp:ListItem Value="MO">Montenegro</asp:ListItem>
    <asp:ListItem Value="NL">Netherlands</asp:ListItem>
    <asp:ListItem Value="NO">Norway</asp:ListItem>
    <asp:ListItem Value="PL">Poland</asp:ListItem>
    <asp:ListItem Value="PT">Portugal</asp:ListItem>
    <asp:ListItem Value="PR">Puerto Rico</asp:ListItem>
    <asp:ListItem Value="RO">Romania</asp:ListItem>
    <asp:ListItem Value="RU">Russian Federation</asp:ListItem>
    <asp:ListItem Value="SA">San Marino</asp:ListItem>
    <asp:ListItem Value="SE">Serbia</asp:ListItem>
    <asp:ListItem Value="SK">Slovakia (Slovak Republic)</asp:ListItem>
    <asp:ListItem Value="SI">Slovenia</asp:ListItem>
    <asp:ListItem Value="ES">Spain</asp:ListItem>
    <asp:ListItem Value="SE">Sweden</asp:ListItem>
    <asp:ListItem Value="CH">Switzerland</asp:ListItem>
    <asp:ListItem Value="TR">Turkey</asp:ListItem>
    <asp:ListItem Value="UA">Ukraine</asp:ListItem>
    <asp:ListItem Value="GB">United Kingdom</asp:ListItem>
    <asp:ListItem Value="US">United States</asp:ListItem>
</asp:DropDownList>
            </div>




        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
