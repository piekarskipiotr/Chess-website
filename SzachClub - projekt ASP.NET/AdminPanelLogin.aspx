<%@ Page Title="Logowanie do Panelu Admina" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="AdminPanelLogin.aspx.cs" Inherits="SzachClub___projekt_ASP.NET.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    Logowanie do Panelu Admina
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    
        <div class="text-center">
            <p>Login: <br><asp:TextBox class="field" ID="txtLogin" runat="server"/><br>
                 <asp:RequiredFieldValidator id="RequiredLoginValidator" runat="server"
                  ControlToValidate="txtLogin"
                  ErrorMessage="Login jest wymagany."
                  ForeColor="#941b0c">
                </asp:RequiredFieldValidator>
            </p>
            <p>Hasło: <br><asp:TextBox class="field" TextMode="Password" ID="txtPasswd" runat="server"/><br>
                <asp:RequiredFieldValidator id="RequiredPasswordValidator" runat="server"
                  ControlToValidate="txtPasswd"
                  ErrorMessage="Hasło jest wymagane."
                  ForeColor="#941b0c">
                </asp:RequiredFieldValidator>
            </p>
            <asp:Button style="cursor:pointer;" class="custom-button2" Text="Zaloguj" runat="server" onclick="LoginBtn"/><br><br>
            <asp:Label ID="LabelMessage" runat="server" />
        </div>
        
   
</asp:Content>
