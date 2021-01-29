<%@ Page Title="Admin Panel" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="SzachClub___projekt_ASP.NET.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    Admin panel
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    Strefa dodawania kontentu
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
        <h3 class="text-center">Dodawanie postu</h3>
        <hr>
        <p>Tytuł: <br><asp:TextBox ID="txtTitle" class="field" style="width: 100%;" runat="server"/><br>
            <asp:RequiredFieldValidator id="RequiredTitleValidator" runat="server"
              ControlToValidate="txtTitle"
              ErrorMessage="Tytuł jest wymagany."
              ValidationGroup="dataGroup"
              ForeColor="#941b0c">
            </asp:RequiredFieldValidator>
        </p>

        <p>Gra: <br><asp:FileUpload ID="fileGame" class="field" runat="server"/><br>
             <asp:RequiredFieldValidator id="RequiredGameValidator" runat="server"
              ControlToValidate="fileGame"
              ErrorMessage="Plik gry jest wymagany."
              ValidationGroup="dataGroup"
              ForeColor="#941b0c">
            </asp:RequiredFieldValidator>
        </p>
        
        <p>Opis: <br><asp:TextBox ID="txtDescription" class="field txtDescription" runat="server" TextMode="MultiLine"/><br>
            <asp:RequiredFieldValidator id="RequiredDescriptionValidator" runat="server"
              ControlToValidate="txtDescription"
              ErrorMessage="Opis jest wymagany."
              ValidationGroup="dataGroup"
              ForeColor="#941b0c">
            </asp:RequiredFieldValidator>
        </p>
    
        
        <asp:Button style="cursor:pointer;" class="custom-button2" Text="Dodaj post" runat="server" onclick="AddPostBtn" /><br>
        <asp:Label ID="LabelMessage" runat="server" />
        
        <div ID="divDataGrid" runat="server">
        <br><br>
        <hr>
        <br><br>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [posts_table]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [posts_table] WHERE [Id] = @original_Id AND (([tytul] = @original_tytul) OR ([tytul] IS NULL AND @original_tytul IS NULL)) AND (([uzytkownik] = @original_uzytkownik) OR ([uzytkownik] IS NULL AND @original_uzytkownik IS NULL)) AND (([obraz] = @original_obraz) OR ([obraz] IS NULL AND @original_obraz IS NULL)) AND (([opis] = @original_opis) OR ([opis] IS NULL AND @original_opis IS NULL))" InsertCommand="INSERT INTO [posts_table] ([tytul], [uzytkownik], [obraz], [opis]) VALUES (@tytul, @uzytkownik, @obraz, @opis)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [posts_table] SET [tytul] = @tytul, [uzytkownik] = @uzytkownik, [obraz] = @obraz, [opis] = @opis WHERE [Id] = @original_Id AND (([tytul] = @original_tytul) OR ([tytul] IS NULL AND @original_tytul IS NULL)) AND (([uzytkownik] = @original_uzytkownik) OR ([uzytkownik] IS NULL AND @original_uzytkownik IS NULL)) AND (([obraz] = @original_obraz) OR ([obraz] IS NULL AND @original_obraz IS NULL)) AND (([opis] = @original_opis) OR ([opis] IS NULL AND @original_opis IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_tytul" Type="String" />
                <asp:Parameter Name="original_uzytkownik" Type="String" />
                <asp:Parameter Name="original_obraz" Type="String" />
                <asp:Parameter Name="original_opis" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tytul" Type="String" />
                <asp:Parameter Name="uzytkownik" Type="String" />
                <asp:Parameter Name="obraz" Type="String" />
                <asp:Parameter Name="opis" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tytul" Type="String" />
                <asp:Parameter Name="uzytkownik" Type="String" />
                <asp:Parameter Name="obraz" Type="String" />
                <asp:Parameter Name="opis" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_tytul" Type="String" />
                <asp:Parameter Name="original_uzytkownik" Type="String" />
                <asp:Parameter Name="original_obraz" Type="String" />
                <asp:Parameter Name="original_opis" Type="String" />
            </UpdateParameters>
            </asp:SqlDataSource>    
           
        
        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" CssClass="custom-grid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="SelectPost" DataKeyNames="Id">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="tytul" HeaderText="tytul" SortExpression="tytul" />
                    <asp:BoundField DataField="uzytkownik" HeaderText="uzytkownik" SortExpression="uzytkownik" />
                    <asp:BoundField DataField="obraz" HeaderText="obraz" SortExpression="obraz" />
                    <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
                </Columns>

<HeaderStyle CssClass="header"></HeaderStyle>

<RowStyle CssClass="rows"></RowStyle>
            </asp:GridView>
        </div>
        </div>
</asp:Content>
