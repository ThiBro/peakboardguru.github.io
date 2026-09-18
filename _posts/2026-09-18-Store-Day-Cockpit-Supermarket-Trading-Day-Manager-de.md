---
layout: post
title: Store Day Cockpit – Der Handelstag-Manager für den Supermarkt
date: 2026-09-18 00:00:00 +0000
tags: retail
image: /assets/2026-09-18-12-05-32/title.jpg
bg_alternative: true
description: "Ein Touch-Cockpit, mit dem die Marktleitung im Supermarkt den kompletten Handelstag steuert – Abteilungsumsätze gegen Plan, Personaleinsatz, Abschriften, offene Aufgaben, Wareneingänge und den Kassenabschluss am Feierabend, alles auf einem Bildschirm."
prompt: |
  Erstelle eine Anwendung für die Marktleitung eines Supermarkts, die den gesamten Handelstag abdeckt. Zeige die Abteilungsumsätze gegen Plan, den Personaleinsatz auf der Fläche, die Abschriften sowie offene Aufgaben wie Preisänderungen und MHD-Kontrollen. Die Marktleitung soll Einträge öffnen können, um Personal umzuplanen, Abschriften zu erfassen oder eine Compliance-Prüfung abzuschließen. Ergänze einen Dialog für Wareneingangsdifferenzen und einen Kassenabschluss-Dialog mit Bestätigungsschritt. Liefere Beispieldaten für acht Abteilungen über eine Woche.
downloads:
  - name: Peakboard.pbmx
    url: /assets/2026-09-18-12-05-32/Peakboard_de.pbmx
read_more_links:
  - name: Mehr Use Cases aus dem Handel
    url: /category/retail
  - name: Weitere Use-Case-Beispiele
    url: /category/usecase
lang: de
permalink: /de/store-day-cockpit-supermarket-trading-day-manager/
translation_url: /en/store-day-cockpit-supermarket-trading-day-manager/
---
{% include youtube.html id="lnLvC_aEOyo" %}


Eine Marktleitung verbringt den Handelstag zu Fuß. Verkaufsfläche, Warenannahme, Büro und wieder von vorn. Ausgerechnet die Zahlen, die den Tag wirklich steuern – wie jede Abteilung gegen Plan läuft, wer gerade auf der Fläche ist, wie viel Ware abgeschrieben wird, welche Preisänderungen und MHD-Kontrollen noch offen sind, ob die Lieferungen am Morgen zu den Papieren gepasst haben – liegen normalerweise in vier oder fünf getrennten Systemen, und die Hälfte davon erreicht man nur vom Büro-PC aus. Also läuft die Marktleitung zurück ins Büro, meldet sich an, liest, läuft wieder raus – und in der Zwischenzeit ist der Freitagnachmittag in der Obst- und Gemüseabteilung längst gelaufen.

Das **Store Day Cockpit** bringt all das auf einen einzigen Touchscreen. Entscheidend ist dabei nicht, dass die Zahlen sichtbar sind – entscheidend ist, dass die Marktleitung direkt handeln kann: Personal verschieben, eine Abschrift erfassen, eine Prüfung freigeben, eine Fehlmenge melden, die Kasse abschließen.

![Handelstag-Übersicht im Store Day Cockpit](/assets/2026-09-18-12-05-32/intro_frame.png)

## Gebaut für den Einsatz im Stehen

Der Screen ist für ein wand- oder wagenmontiertes 1920×1080-Touchpanel gedacht – im Marktbüro oder im Personalgang hinter den Kassen. Alles ist darauf ausgelegt, dass jemand davorsteht, womöglich mit einem Rollwagen in der anderen Hand: große KPI-Zahlen, 60 bis 70 Pixel hohe Schaltflächen, großzügige Listenzeilen und keine Tastatur für die üblichen Wege.

![Cockpit in der Marktumgebung](/assets/2026-09-18-12-05-32/intro_frame_green.png)

## Die Handelstag-Übersicht

Hier startet der Tag. Vier KPI-Kacheln oben zeigen den Ist-Umsatz des Markts, den Tagesplan, die bisher gebuchten Abschriften und die Planerfüllung in Prozent, darunter ein Fortschrittsbalken.

Darunter liegen die acht Verkaufsabteilungen – **Obst & Gemüse**, **Backwaren**, **Fleisch & Wurst**, **Molkerei**, **Tiefkühl**, **Getränke**, **Trockensortiment** und **Non-Food** – jeweils mit Ist, Plan, einer horizontalen Fortschrittsanzeige und der Abschriftensumme. Eine Abteilung, die hinterherhinkt, sieht man in zwei Sekunden – und genau so viel Aufmerksamkeit hat eine Marktleitung im Vorbeigehen übrig.

Rechts listet die Aufgabenliste die offenen Preisänderungen und MHD-Kontrollen nach Priorität und Fälligkeit. Darunter setzt ein Balkendiagramm mit Plan und Ist je Wochentag den heutigen Tag in den Wochenkontext – ein schwacher Freitagvormittag lässt sich so gegen den Verlauf der gesamten Woche lesen.

![Handelstag-Übersicht mit Abteilungsleistung und offenen Aufgaben](/assets/2026-09-18-12-05-32/de_010.png)

## Ein Tipp auf die Abteilung verschiebt Personal

Interaktion ist der eigentliche Zweck dieser Anwendung. Ein Tipp auf eine Abteilungszeile öffnet den Personaldialog: Dort werden Kolleginnen und Kollegen per Drag & Drop zwischen den Spalten **Auf der Fläche** und **Verfügbar / in Pause** verschoben.

Liegt Obst & Gemüse am Freitagnachmittag acht Prozent hinter Plan, zieht die Marktleitung zwei Leute herüber, bestätigt – und die Umplanung landet sofort im Protokoll. Kein Anruf im Büro, kein Zettel am Klemmbrett, der bis 18 Uhr verschwunden ist.

## Ein Tipp auf die Aufgabe öffnet das passende Werkzeug

Aufgaben sind hier keine reine To-do-Liste – jeder Typ führt direkt zu dem Werkzeug, das die Sache auch erledigt.

Eine **Preisänderung** öffnet ein Abschriftenformular: Der Artikel ist benannt, der neue Preis wird mit Validierung eingetippt, die Stückzahl über einen Schieberegler gesetzt und ein Grund aus einer Auswahlliste gewählt. Der Abschriftenwert rechnet sich live mit – die Marktleitung sieht also, was die Entscheidung kostet, bevor sie gespeichert wird.

Eine **MHD-Kontrolle** öffnet eine Prüfcheckliste mit vier Pflichtpunkten. Die Schaltfläche **Prüfung abschließen** bleibt ausgegraut, bis alle vier gesetzt sind. Prüfer und eine freie Notiz werden gemeinsam mit dem Ergebnis festgehalten – erst das macht aus einer Routinekontrolle etwas, das einem Audit standhält.

![Aufgabenbearbeitung mit Abschriftenformular und Prüfcheckliste](/assets/2026-09-18-12-05-32/de_020.png)

## Wareneingänge und Differenzen

Der Lieferungen-Screen listet die Wareneingänge des Morgens mit erwarteten und tatsächlich erhaltenen Mengen. Ein Tipp auf eine Zeile öffnet den Differenzdialog: Die erhaltene Menge lässt sich über Plus/Minus-Tasten korrigieren oder per Schieberegler einstellen. Die Abweichung wird live angezeigt, und die Marktleitung nimmt die Lieferung entweder als vollständig an oder meldet die Differenz mit Grund und Notiz an den Lieferanten.

Früher war das eine Notiz auf dem Lieferschein, die Tage später im Büro ankam – wenn überhaupt. Hier fällt die Entscheidung an der Rampe, direkt vor der Palette.

## Der Tagesabschluss

Am Ende des Handelstags dient der Kassen-Screen dem Zählen. Jede Stückelung von der 50er-Note bis zur 10-Cent-Münze hat ihren eigenen Zähler. Zeilensummen und die gezählte Gesamtsumme rechnen sich bei jedem Tipp neu, und die Abweichung zur erwarteten Kasseneinnahme steht deutlich sichtbar im Bild.

Der Tagesabschluss ist bewusst zweistufig. Ein Bestätigungsdialog zeigt die Zusammenfassung noch einmal, verlangt die Auswahl der abschließenden Führungskraft und ein ausdrücklich gesetztes Bestätigungshäkchen, bevor die Schaltfläche überhaupt klickbar wird. Erst dann wird der Abschluss geschrieben und die Erfolgsmeldung eingeblendet. Einen Handelstag abzuschließen darf eine Sekunde mehr Nachdenken kosten als ein einfacher Tastendruck.

![Kassenabschluss mit Bestätigungsschritt](/assets/2026-09-18-12-05-32/de_030.png)

## Alles landet im Protokoll

Personal verschoben, Besetzung bestätigt, Abschrift erfasst, Prüfung bestanden, Lieferung angenommen, Differenz gemeldet, Tag abgeschlossen – jede Aktion in der App landet mit Zeitstempel und Person in einem laufenden Aktivitätsprotokoll. Der Markt bekommt damit eine lückenlose Nachweiskette darüber, wer während des Handelstags was getan hat – als Nebenprodukt der normalen Arbeit, nicht als zusätzlicher Papierkram am Abend.

## Die englische Variante

Dasselbe Cockpit gibt es mit englischen Beschriftungen für internationale Märkte. Layout, Dialoge und die Beispieldaten für acht Abteilungen über eine Woche sind identisch.

![Handelstag-Übersicht mit Abteilungsleistung](/assets/2026-09-18-12-05-32/de_010.png)

![Aufgabenbearbeitung mit Abschriftenformular](/assets/2026-09-18-12-05-32/de_020.png)

![Kassenabschluss mit Bestätigungsschritt](/assets/2026-09-18-12-05-32/de_030.png)

## Ergebnis

Das Store Day Cockpit fasst vier oder fünf Backoffice-Systeme zu einem Touchpanel zusammen, an dem die Marktleitung ohnehin ein Dutzend Mal am Tag vorbeikommt – und macht aus Lesen ein Handeln. Planerfüllung, Personaleinsatz, Abschriften, Aufgaben, Lieferungen und Kassenabschluss liegen auf demselben Screen, und jeder dieser Punkte lässt sich mit wenigen Tipps bearbeiten – jede Aktion landet im Protokoll, ohne dass sie jemand aufschreiben müsste.

Das Beispielprojekt bringt Daten für acht Abteilungen über eine komplette Woche mit. So lässt sich der gesamte Handelstag vom Wareneingang am Morgen bis zum Kassenabschluss durchspielen, bevor die eigenen Systeme angebunden werden.