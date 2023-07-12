import 'package:adv_basic/models/quiz_questions.dart';

const questions = [
  QuizQuestions (
    'Jakie są główne elementy składowe interfejsów użytkownika Flutter?' ,
    [
      'Widżety' ,
      'Komponenty' ,
      'Bloki' ,
      'Funkcje' ,
    ],
  ),
  QuizQuestions ( 'Jak zbudowane są interfejsy Flutter?' , [
    'Łącząc widżety w kodzie' ,
    'Łącząc widżety w edytorze wizualnym' ,
    'Poprzez definiowanie widżetów w plikach konfiguracyjnych' ,
    'Korzystając z XCode dla iOS i Android Studio dla Androida' ,
  ]),
  QuizQuestions (
    'Jaki jest cel StatefulWidget?' ,
    [
      'Aktualizuj interfejs użytkownika w miarę zmian danych' ,
      'Aktualizuj dane w miarę zmian w interfejsie użytkownika' ,
      'Ignoruj zmiany danych' ,
      'Renderuj interfejs użytkownika, który nie zależy od danych' ,
    ],
  ),
  QuizQuestions (
    'Którego widgetu powinieneś częściej używać: StatelessWidget czy StatefulWidget?' ,
    [
      'Widżet Bezstanowy' ,
      'StatefulWidget' ,
      'Oba są równie dobre' ,
      'Żadne z obecnych' ,
    ],
  ),
  QuizQuestions (
    'Co się stanie, jeśli zmienisz dane w StatelessWidget?' ,
    [
      'Interfejs użytkownika nie jest aktualizowany' ,
      'Interfejs użytkownika został zaktualizowany' ,
      'Najbliższy StatefulWidget jest aktualizowany' ,
      'Wszystkie zagnieżdżone StatefulWidgets są aktualizowane' ,
    ],
  ),
  QuizQuestions (
    'Jak zaktualizować dane w StatefulWidgets?' ,
    [
      'Wywołując setState()' ,
      'Wywołując updateData()' ,
      'Wywołując updateUI()' ,
      'Wywołując updateState()' ,
    ],
  ),
];