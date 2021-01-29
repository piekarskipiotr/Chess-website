<%@ Page Title="SzachClub - Edytuj post" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="EditPost.aspx.cs" Inherits="SzachClub___projekt_ASP.NET.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <asp:Label ID="LabelTitle" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
     <p>Tytuł: <br><asp:TextBox ID="txtTitle" class="field" style="width: 100%;" runat="server"/><br>
            <asp:RequiredFieldValidator id="RequiredTitleValidator" runat="server"
              ControlToValidate="txtTitle"
              ErrorMessage="Tytuł jest wymagany."
              ForeColor="Red">
            </asp:RequiredFieldValidator>
        </p>

        <p>Gra: <asp:Label ID="LabelGameImage" runat="server" /><br>Wybierz nowy plik: <br><asp:FileUpload ID="fileGame" class="field" runat="server"/><br>
        </p>
        
        <p>Opis: <br><asp:TextBox ID="txtDescription" class="field txtDescription" runat="server" TextMode="MultiLine"/><br>
            <asp:RequiredFieldValidator id="RequiredDescriptionValidator" runat="server"
              ControlToValidate="txtDescription"
              ErrorMessage="Opis jest wymagany."
              ForeColor="Red">
            </asp:RequiredFieldValidator>
        </p>
    
        <div>
        <asp:Button style="cursor:pointer; display:inline-block; margin-right: 10px;" class="custom-button2" Text="Zapisz zmiany" runat="server" onclick="EditPostBtn" />
        <asp:Button style="cursor:pointer; display:inline-block;" class="custom-button3" Text="Usuń" runat="server" onclick="DeletePostBtn" />
        </div><br>
        <asp:Label ID="LabelMessage" runat="server" />
</asp:Content>
