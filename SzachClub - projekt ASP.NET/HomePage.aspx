<%@ Page Title="SzachClub - Strona Główna" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SzachClub___projekt_ASP.NET.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    Strona Główna
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    Szachy to nasza pasja
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <h2>Kim jesteśmy?</h2>
    <p>SzachClub to społeczność zrzeszająca fanów szachów, tych początkujących jak i zaawansowanych.</p>
    <p>Na naszej stronie publikujemy treści, które pomogą wam poprawić waszą grę lub po prostu się jej nauczyć.</p>
    <p>W naszej grupie powitamy każdego! Także czytaj i twórz z nami wielką wspaniałą ekipe.</p>

    <hr>

    <h2>Skład adminów</h2>
    
    <div id="team-container">
        <div class="person-card">
            <img src="images/person1.jpg"/>
            <p>xazai</p>
            <hr>
            <p>Lubi cole i chipsy.</p>
            <p>Ulubiony debiut to polish opening.</p>
        </div>
        <div class="person-card">
            <img src="images/person2.jpg"/>
            <p>bedi2115</p>
            <hr>
            <p>Lubi mądre czyny.</p>
            <p>Ulubiony debiut to Queen's Gambits.</p>
        </div>
         <div class="person-card">
            <img src="images/person3.jpg"/>
            <p>wojtek96</p>
            <hr>
            <p>Lubi samochody.</p>
            <p>Ulubiony debiut to partia wiedeńska.</p>
        </div>
    </div>
    
    
</asp:Content>
