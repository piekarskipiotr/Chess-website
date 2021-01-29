<%@ Page Title="SzachClub - Figury" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="Pieces.aspx.cs" Inherits="SzachClub___projekt_ASP.NET.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    Figury
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
        
    <h2>Jakie mamy figury?</h2>
    <p>Przeciwnicy dysponują zestawami figur w odmiennych kolorach. W skład każdego z nich wchodzi szesnaście figur: król, hetman (również nazywany damą lub królową), dwa gońce (z  niemieckiego nazywane czsami lauframi), dwa skoczki (zwane też popularnie końmi), dwie wieże oraz osiem pionów.</p>
    <br />
    <h2>Ruchy figur</h2>

    <p><b>Król</b> - jest najważniejszą, choć nie najsilniejszą figurą na szachownicy. Może poruszać się w każdym kierunku, ale tylko o jedno pole (jedynym wyjątkiem od tej reguły jest roszada, o której piszę na końcu tego działu).</p>
    <br>
    <div class="text-center"><img src="images/krol.png" /></div>
    <br>

    <p><b>Goniec</b> - może poruszać się tylko po przekątnych, o dowolną ilość pól. Nie może jednak przeskakiwać innych bierek, niezależnie od tego czy są to bierki własne czy przeciwnika (właściwość przeskakiwania bierek posiadają tylko skoczki, o czym dowiecie się później). Gońce zaliczane są do figur lekkich.</p>
    <br>
    <div class="text-center"><img src="images/goniec.png" /></div>
    <br>

    <p><b>Wieża</b> - zaliczana jest do figur ciężkich. Mogą poruszać się o dowolna ilość pól po liniach poziomych oraz pionowych. Proszę zwrócić uwagę iż, niezależnie od pola na którym ustawiona jest wieża, to ilość pól na które może wykonać posunięcie jest taka sama.</p>
    <br>
    <div class="text-center"><img src="images/wieza.png" /></div>
    <br>

    <p><b>Hetman</b> - jest najsilniejszą figurą na szachownicy. Może poruszać się w dowolnym kierunku, po liniach pionowych, poziomych oraz przekątnych (łączy w sobie właściwości gońca oraz wieży) o dowolną ilość pól. Jak wielki zasięg ma ta figura uwidacznia poniższy diagram:</p>
    <br>
    <div class="text-center"><img src="images/hetman.png" /></div>
    <br>

    <p><b>Skoczek</b> - porusza się na kształt litery "L", jedno pole po prostej, następnie o jedno na ukos. Z początku może się to wydawać nieco skomplikowane, ale myślę że diagram powinien wyjaśnić o czym mowa:</p>
    <br>
    <div class="text-center"><img src="images/skoczek.png" /></div>
    <br>

    <p><b>Pionki</b> - mogą poruszać się tylko do przodu po kolumnie po jednym polu. Wyjątkiem jest przypadek gdy znajduje się w pozycji wyjściowej (białe pionki na drugiej linii, a czarne na siódmej), mamy wtedy do wyboru ruch o jedno lub o dwa pola:</p>
    <br>
    <div class="text-center"><img src="images/piony.png" /></div>
    <br>

    <p><b>Bicie pionem, bicie w przelocie, przemiana</b> - bicie pionkiem jest możliwe w przypadku, gdy bierka którą chcemy zbić znajduje się na sąsiadującej kolumnie, o jedno pole przed nim:</p>
    <br>
    <div class="text-center"><img src="images/piony2.png" /></div>
    <br>
    <p>Pion stojący na c2 może bić wieżę na b3 oraz pionka na d3. W takim przypadku stawiamy pionka na miejscu bitej bierki.
Istnieje jeszcze jeden rodzaj bicia, nazywany "bicie w przelocie". Ma ono miejsce w przypadku gdy pion przekroczy linię środkową (patrz diagram). Jeśli teraz białe zagrają 1.f2-f4, to czarne mogą zbić białego pionka 1... g4:f3, tak jak gdyby ten wykonał normalny ruch (o jedno pole). Dzieje się tak ze względu na fakt iż przeszedł on przez pole f3, które jest pod kontrolą czarnego piona. Należy pamiętać że bić w przelocie można tylko bezpośrednio po ruchu pionka przeciwnika o dwa pola. Jeżeli wykonasz inne posunięcie tracisz prawo do bicia w przelocie danego pionka.</p>
    <p>Ostatnia badzo ważna sprawa dotycząca piona to jego przemiana. Gdy biały pion dojdzie do ósmej linii, lub czarny do pierwszej linii, mamy obowiązek wymienić go na dowolną figurę (oprócz króla). W takiej sytuacji nie ma znaczenia jakie figury znajdują się aktualnie na szachownicy. Zakładając że uda się nam dotrzeć do linii przemiany wszystkimi pionkami możemy mieć nawet 9 hetmanów!</p>
    <br>

    <p><b>Roszada</b> - to jedyne posunięcie w szachach, które dopuszcza jednocześnie ruch dwoma figurami. Polega na przesunięciu króla o dwa pola w stronę jednej z wież, natomiast wieżę przenosi się nad królem i stawia obok niego. Należy pamiętać że przy wykonywaniu roszady najpierw wykonujemy ruch królem, a dopiero potem wieżą.</p>
    <div class="text-center"><img src="images/roszada.png" /></div>
    <p>W tym przypadku można wykonać roszadę długą oraz krótką. Roszada długa wygląda tak: króla przestawiamy na pole c1, a wieżę z a1 stawiamy na d1. Natomiast roszada krótka: król wędruje na g1, a wieżę z h1 stawiamy na f1. W przypadku czarnych roszada wykonywana jest analogicznie.
Uwaga!Wykonanie roszady jest niemożliwe w nastepujących przypadkach:</p>
    <ul>
        <li>Jeśli wykonywane były już posunięcia królem lub wieżą biorącą udział w roszadzie(nawet jeśli wróciły na swoje miejsce).</li>
        <li>Jeśli król jest w danej chwili szachowany.</li>
        <li>Jeśli pole przez które zostaje przeniesiony król, lub pole na którym ma stanąć król jest zaatakowane.</li>
        <li>Jeśli między królem a wieżą stoi jakaś figura.</li>
    </ul>
    <br>

  
</asp:Content>
