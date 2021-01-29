<%@ Page Title="SzachClub - Zasady gry" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="GameRules.aspx.cs" Inherits="SzachClub___projekt_ASP.NET.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    Zasady gry
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <h2>Celem gry w szachy jest zamatowanie króla przeciwnika lub doprowadzenie do poddania się przeciwnika.</h2>
    
    <br>

    <p><b>SZACH</b> - jest to bezpośredni atak figury przeciwnika na króla. Szacha nie można ignorować, czyli trzeba albo:</p>
    <p>a) odejść  królem z pola narażonego atakiem.</p>
    <p>b) zbić bierkę atakującą króla</p>
    <p>c) zasłonić króla inną bierką (tylko wtedy gdy nie atakuje skoczek)</p>

    <br>

    <p><b>MAT</b> - jest to sytuacja gdy zszachowany król nie ma możliwości ucieczki, nie można zbić figury szachującej ani zasłonić się. Gdy następuje Mat (mówimy Szach i Mat) kończy partie, wygrywa ten kto zamatował króla przeciwnika.</p>

    <br>

    <p><b>PAT</b> - jest to sytuacja gdy król nie jest szachowany ale nie ma ruchu ani żadna z bierek też nie ma ruchu. Pat kończy grę z wynikiem remisowym.</p>

</asp:Content>
