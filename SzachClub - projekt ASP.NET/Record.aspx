<%@ Page Title="SzachClub - Zapis partii" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="Record.aspx.cs" Inherits="SzachClub___projekt_ASP.NET.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    Zapis partii
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <p>Zapis partii stworzono, aby można było odtworzyć partię. Dzięki temu można przeanalizować swoją wcześniejszą grę. Znajomość notacji szachowej jest bardzo ważna w kontekście grania w turniejach (brak znajomości grozi dyskwalifikacją).</p>
    <br>
    <div class="text-center"><img src="images/zapis.png"/></div>
    <br>
    <p>Każdy język, tak jak i szachowy, ma swoje własne oznaczenia, czyli:</p>
    <ul>
        <li><b>skoczek</b> - S (lub angielskie oznaczenie N)</li>
        <li><b>wieża </b> - W (lub R od angielskiego Rock)</li>
        <li><b>goniec</b> - G (lub B od angielskiego Bishop)</li>
        <li><b>hetman </b> - H (lub Q od angielskiego Queen)</li>
        <li><b>król </b> - K (po angielsku King, więc angielskim oznaczeniem i tak pozostaje K)</li>
        <li><b>pion </b> - nie posiada oznaczenia (po angielsku Pawn)</li>
    </ul>
    <p>Natomiast pole oznaczamy łącząc literę kolumny z liczbą rzędu np. a1, b5, d8, g3.</p>
    <br>
    <p>Oznaczenia terminów:</p>
    <ul>
        <li><b>Roszada krótka</b> - 0-0</li>
        <li><b>Roszada długa</b> - 0-0-0</li>
        <li><b>Szach</b> - +</li>
        <li><b>Podwójny szach</b> - ++</li>
        <li><b>Zbicie</b> - x lub :</li>
        <li><b>Mat</b> - # lub X lub .</li>
    </ul>
    <br>
    <p>Komentarze:</p>
    <ul>
        <li><b>dobre posunięcie</b> - !</li>
        <li><b>bardzo dobre posunięcie</b> - !!</li>
        <li><b>słabe posunięcie</b> - ?</li>
        <li><b>przegrywające posunięcie</b> - ??</li>
        <li><b>posunięcie zasługujące na uwagę</b> - !?</li>
        <li><b>posunięcie wątpliwej wagi</b> - ?!</li>
        <li><b>białe mają decydującą przewagę</b> - +-</li>
        <li><b>czarne mają decydującą przewagę</b> - -+</li>
    </ul>

</asp:Content>
