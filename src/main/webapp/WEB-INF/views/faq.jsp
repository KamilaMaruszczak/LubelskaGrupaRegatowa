<%--
  Created by IntelliJ IDEA.
  User: kamila
  Date: 04.02.19
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<%@ include file="/WEB-INF/views/head.jsp" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<body>
<c:choose>
    <c:when test="${instructor}">

        <%@ include file="/WEB-INF/views/admin/sidebar.jsp" %>

    </c:when>
</c:choose>


<div class="border box">

    <div class="text-center"><p>Często zadawane pytania:</p><br></div>
    <div class="table-responsive">
        <table class="table table-striped" id="sailors">

            <tr>
                <th class="align-middle">1. Jak zapisać się na kurs?</th>
            </tr>
            <tr>
                <td class="justify">Aby zapisać się na kurs należy wejść na stronę główną <span
                        class="charonman font-weight-bold"><a href="/">Lubelska Grupa Regatowa</a></span>,
                    gdzie
                    znajduje się aktualna lista dostępnych kursów. Po wybraniu terminu kursu należy kliknąć "ZAPISY" i
                    zostaniemy poproszeni o zalogowanie się
                    na swoje konto w serwisie. Jeżeli nie posiadamy konta w serwisie należy się zarejestrować podając
                    najważniejsze dane kontaktowe. Dane te są
                    przechowywane zgodnie z ustawą o ochronie danych osobowych RODO i wykorzystywane wyłącznie w celu
                    ewentualnego
                    powiadomienia o zmianach w organizacji kursu (np. ze względów pogodowych).
                </td>
            </tr>
            <tr>
                <th class="align-middle">2. Gdzie znajdę listę moich kursów i inne informacje?</th>
            </tr>
            <tr>
                <td class="justify">Wszystkie aktualne zapisy użytkownika dostępne są w zakładce "MOJE ZAPISY", gdzie
                    istnieje możliwość
                    edycji/usunięcia
                    zapisu na dany termin kursu.
                </td>
            </tr>
            <tr>
                <th class="align-middle">3. Kto może zapisać się na kurs?</th>
            </tr>
            <tr>
                <td class="justify">Z założenia prowadzimy kursy dla młodzieży i dzieci od lat 7 na łódkach klasy
                    Optymist i Europa. Istnieje możliwość zapisu osób
                    dorosłych po uformowaniu się takiej grupy. Jeżeli interesuje Cię udział w kursie dla dorosłych lub
                    kurs indywidualny prosimy o
                    kontakt bezpośredni w celu ustalenia, czy istnieje taka możliwość. Numer kontaktowy znajduje się w
                    zakładce <a href="/contact">"KONTAKT"</a>.
                </td>
            </tr>
            <tr>
                <th class="align-middle">4. Czy żeglarz musi umieć pływać?</th>
            </tr>
            <tr>
                <td class="justify">Umiejętność pływania wpław nie jest niezbędna do uprawiania żeglarstwa. Natomiast
                    trzeba pamiętać, że żeglarstwo jest zaliczane do
                    sportów wodnych i większość czasu spędza się w łódce na jeziorze. Dziecko uczestniczące w kursie
                    będzie wyposażone w kamizelkę asekuracyjną, ale nie może bać się wody.
                    Podczas kursu uczymy także wywrotek i stawiania łódki, dlatego umiejętność pływania lub utrzymywania
                    się na wodzie jest mile widziana.
                </td>
            </tr>
            <tr>
                <th class="align-middle">5. Ile trwa kurs?</th>
            </tr>
            <tr>
                <td class="justify"> Kurs trwa 6 dni. Od poniedziałku do piątku zajęcia odbywają się dwa razy dziennie -
                    rano i po obiedzie, a w sobotę będą zorganizowane regaty. Jest to minimalny czas w jakim można
                    przekazać
                    wiedzę żeglarską niezbędną do samodzielnego żeglowania. Postęp podczas kursu i zdobyte umiejętności
                    są jednak zależne od indywidualnych
                    predyspozycji żeglarskich.
                </td>
            </tr>
            <tr>
                <th class="align-middle">6. Co dostaję w pakiecie kursu?</th>
            </tr>
            <tr>
                <td class="justify">W pakiecie kursu, każdy uczestnik otrzymuje zajęcia przez 6 dni pod opieką
                    instruktora.
                    Przez ten czas kursant otrzyma niezbędną wiedzę merytoryczną, zajęcia wprowadzające i teorię
                    żeglarską, a następnie zajęcia na wodzie pod asystą motorówki.
                    Każdy uczestnik otrzymuje także na czas kursu
                    swoją łódkę, wraz z całym niezbędnym wyposażeniem oraz kamizelkę asekuracyjną i piankę. Ostatniego
                    dnia kursu, będą zorganizowane
                    regaty z pamiątkowymi dyplomami i upominkami.
                </td>
            </tr>
            <tr>
                <th class="align-middle">7. Zapisałem się na kurs i opłaciłem miejsce, co dalej?</th>
            </tr>
            <tr>
                <td class="justify">Szkolenie zaczyna się w poniedziałek o godzinie 9.30 i kończy w sobotę regatami na
                    zakończenie kursu. Prosimy o punktualne przybycie na teren
                    bazy żeglarskiej, znajdującej się nad jeziorem Piaseczno pod adresem dostępnym w zakładce <a
                            href="/contact">"KONTAKT"</a>. Znajdują się tam
                    współrzędne i wskazówki dojazdu.
                </td>
            </tr>
            <tr>
                <th class="align-middle">8. Co młody żeglarz powinien wziąć ze sobą na kurs?</th>
            </tr>
            <tr>
                <td class="justify">Żeglarz powinien mieć ubranie zapasowe do przebrania oraz ręcznik, w razie
                    zmoczenia. Czapkę od słońca i okulary, jeżeli jest to
                    gorący i słoneczny dzień, a także wodę lub ulubiony napój. Mile widziane są także buty do wody (np.
                    z neoprenu) lub inne, które będzie można zamoczyć (np. tenisówki).
                    Konieczne jest też zabranie ze sobą uśmiechu i dobrego humoru, gdyż zabawa będzie znakomita :)
                </td>
            </tr>
            <tr>
                <th class="align-middle">9. Co jeżeli nie ma wiatru lub jest bardzo zła pogoda?</th>
            </tr>
            <tr>
                <td class="justify"> Bezpieczeństwo jest dla nas najważniejsze. Instruktorzy dokładnie śledzą i
                    analizują prognozy pogodowe, więc nie ma
                    obawy o bezpieczeństwo na kursie. Dzięki szybkiej motorówce, w razie nagłego załamania pogody
                    instruktor jest w stanie zholować łódki
                    do brzegu w ciągu kilku minut. Natomiast z drugiej strony, jeżeli pogoda jest zupełnie bezwietrzna,
                    kursanci mają zapewnione inne atrakcje
                    typu kurs wiązania węzłów lub pokazy filmów żeglarskich.
                </td>
            </tr>
            <tr>
                <th class="align-middle">10. Mam inne pytania i wątpliwości, co mam zrobić?</th>
            </tr>
            <tr>
                <td class="justify">W razie pytań lub wątpliwości na które nie ma odpowiedzi w tej sekcji, prosimy o
                    bezpośredni kontakt telefoniczny.
                    Dane kontaktowe znajdują się w zakładce <a href="/contact">"KONTAKT"</a>.
                </td>
            </tr>

        </table>
    </div>
</div>

</body>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>
