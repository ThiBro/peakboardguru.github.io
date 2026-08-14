---
layout: post
title: Turnaround-Koordinationsboard für Flughäfen - Bodenabfertigung im Zeitplan halten
date: 2026-08-13 00:00:00 +0000
tags: transportation logistics
image: /assets/2026-08-13-09-47-11/title.jpg
bg_alternative: true
description: "Ein Touch-Dashboard für den Turnaround-Koordinator eines Bodenabfertigers - Meilensteinverfolgung für Betankung, Catering, Reinigung und Gepäck, Verspätungscodes und Ressourcenzuweisung mit Konfliktprüfung."
prompt: |
  Entwirf eine Anwendung, die die Turnaround-Aktivitäten eines Flughafen-Abfertigers koordiniert. Liste alle ankommenden und abgehenden Flüge mit Standplatz, Flugzeugtyp und Turnaround-Meilensteinen auf und lass einen Koordinator einen Flug öffnen, um den Fortschritt bei Betankung, Catering, Reinigung und Gepäck zu aktualisieren oder einen Verspätungscode zu erfassen. Füge einen Ressourcendialog für die Zuweisung von Bodencrews und Equipment inklusive Konfliktwarnungen hinzu. Stelle Beispieldaten für einen kompletten Tag mit achtzig Flügen bereit.
downloads:
  - name: Peakboard.pbmx
    url: /assets/2026-08-13-09-47-11/Peakboard_de.pbmx
read_more_links:
  - name: Weitere Dashboards aus dem Transportwesen
    url: /category/transportation
  - name: Weitere Anwendungsbeispiele
    url: /category/usecase
lang: de
permalink: /de/airport-turnaround-coordination-board/
translation_url: /en/airport-turnaround-coordination-board/
---
{% include youtube.html id="ja-CWwRetxI" %}


Jedes Flugzeug, das an einem Flughafen aufsetzt, startet ein Rennen gegen die Uhr. Zwischen dem Moment, in dem die Räder auf der Standposition zum Stehen kommen, und dem Moment, in dem der Pushback-Schlepper anrollt, muss ein Bodenabfertiger das Flugzeug betanken, die Bordküchen neu bestücken, die Kabine reinigen und hunderte Gepäckstücke aus den Frachträumen holen und wieder hineinbringen. Rutscht auch nur eine dieser vier Tätigkeiten, rutscht der Abflug mit - und die Airline bekommt einen Verspätungscode in ihren Flugdatensatz geschrieben.

![Intro Turnaround-Koordinationsboard](/assets/2026-08-13-09-47-11/intro_frame.png)

In diesem Artikel schauen wir uns das Leitstandsboard an, das genau für diese Aufgabe gebaut wurde: für den Turnaround-Koordinator eines Bodenabfertigers an einem mittelgroßen Flughafen mit rund achtzig Rotationen pro Tag.

## Wo das Board hängt

Dieses Dashboard ist für ein wandmontiertes Touch-Display im Operations-Raum des Abfertigers oder in der Vorfeldleitung gedacht - direkt neben den Bildschirmen für die Standplatzvergabe. Duty Manager, Schichtleiter und der diensthabende Koordinator sehen alle dasselbe Bild auf einen Blick. Niemand muss mehr nachfragen, wie es um Standplatz B12 steht, denn es hängt an der Wand.

## Der Hauptbildschirm

Der Hauptbildschirm beantwortet die beiden Fragen, auf die es Minute für Minute ankommt: Welche Turnarounds sind noch offen, und welche stecken in Schwierigkeiten?

![Flugübersicht mit KPI-Kacheln und Turnaround-Tabelle](/assets/2026-08-13-09-47-11/de_010.png)

Vier große **KPI-Kacheln** in der Kopfzeile zeigen die Tagessummen - Flüge heute, offene Turnarounds, verspätete Flüge und bereits abflugbereit gemeldete Maschinen. Darunter listet eine Flugtabelle über die volle Breite jede ankommende und abgehende Rotation mit Flugnummer, Richtung, Flugzeugtyp, Standplatz und Planzeit auf. Es folgt ein kompakter Meilensteinstreifen mit dem Fertigstellungsgrad für **Betankung**, **Catering**, **Kabinenreinigung** und **Gepäck**, einem Gesamtfortschritt in Prozent und einem Statuswort.

Die Zeilen sind farbcodiert: Ein verspäteter Flug leuchtet rot, eine vollständig vorbereitete Maschine grün, alles Laufende liegt in Bernstein. Vom anderen Ende des Raums aus liest der Schichtleiter den Zustand des Betriebs ab, ohne irgendetwas anzufassen.

## Einen Turnaround aktualisieren

Wenn etwas Aufmerksamkeit braucht, tippt der Koordinator einfach auf die Zeile. Ein Flugdetail-Dialog legt sich über das Board und trägt die Flugnummer in der Kopfzeile.

![Flugdetail-Dialog mit Meilenstein-Schiebereglern und Verspätungscode](/assets/2026-08-13-09-47-11/de_020.png)

Statt Zahlen in Felder zu tippen - was auf dem Vorfeld ohnehin niemand zuverlässig macht - zieht der Koordinator vier Schieberegler für Betankung, Catering, Kabinenreinigung und Gepäck. Jeder rastet in Zehn-Prozent-Schritten ein und ist in einer eigenen Farbe gezeichnet, damit die vier Arbeitsstränge optisch klar getrennt bleiben.

Ist der Turnaround aus dem Ruder gelaufen, lassen sich über ein Dropdown mit **Verspätungscodes** im IATA-Stil (verspätete Check-in-Annahme, verspätetes oder sperriges Gepäck, Betankungsverzug, verspätete Cateringanlieferung, technischer Defekt, Wetter und weitere) sowie ein freies Bemerkungsfeld genau festhalten, was passiert ist und warum. Und wenn die Maschine vollständig vorbereitet ist, setzt eine Schnellwahl-Schaltfläche alle vier Meilensteine mit einem einzigen Tipp auf fertig.

## Crews und Equipment buchen - mit Konfliktwarnung

Aus dem Flugdialog heraus öffnet der Koordinator den Dialog zur Ressourcenzuweisung. Hier werden Crews und Bodenabfertigungsgeräte auf einen Flug gebucht.

Zwei Dropdowns bieten die **Bodencrews** (Ramp und Beladung, Kabinenreinigung, Betankung, Catering, Gepäcksortierung, jeweils mit Schichtfenster) und den **Gerätepool** (Fluggastbrücken, Bodenstromaggregate, Pushback-Schlepper, Bandlader, Tankwagen, Catering-Hubfahrzeuge, Toilettenfahrzeuge). Sobald sich eine Auswahl ändert, prüft das Dashboard, ob diese Crew oder dieses Gerät im selben Zeitfenster bereits einem anderen Flug zugesagt ist, und schreibt eine Warnung in ein hervorgehobenes bernsteinfarbenes Banner. Eine Tabelle darunter zeigt, was diesem Flug bereits zugewiesen ist.

Der Koordinator kann die Warnung entweder annehmen und etwas anderes wählen oder sie mit der Schaltfläche **Trotzdem zuweisen** bewusst übergehen. Genau so läuft es im realen Vorfeldbetrieb: Manchmal muss ein Supervisor wissentlich doppelt buchen und braucht vom System schlicht eine Dokumentation davon - keine Blockade der Entscheidung.

## Das Ressourcenboard

Ein zweiter Bildschirm liefert das größere Bild für Planungsgespräche.

![Ressourcenboard mit Crews, Equipment, Zuweisungen und Verspätungsprotokoll](/assets/2026-08-13-09-47-11/de_030.png)

Er zeigt den vollständigen Crew-Dienstplan mit Qualifikationen und Schichten, den kompletten Gerätepool mit Kategorien und Heimatpiers, alle laufenden Zuweisungen über den Tag hinweg sowie das mitlaufende Verspätungsprotokoll mit Zeiten, Flügen, Codes und Bemerkungen. Diesen Bildschirm holt sich der Duty Manager hoch, wenn die Frage nicht lautet "Was passiert mit dieser Maschine?", sondern "Haben wir heute Nachmittag genug Bandlader an Pier A?".

## Ergebnis

![Turnaround-Board an der Wand des Operations-Raums](/assets/2026-08-13-09-47-11/intro_frame_green.png)

Das Board macht aus einem Turnaround statt einer Serie von Funksprüchen einen gemeinsamen, sichtbaren Zustand. Jeder im Operations-Raum weiß, welche Flugzeuge im Plan liegen, welche wegrutschen und warum, und welche Crews und Fahrzeuge bereits verplant sind. Verspätungscodes werden in dem Moment erfasst, in dem sie entstehen, statt Stunden später aus dem Gedächtnis rekonstruiert zu werden - und doppelt gebuchtes Equipment fällt auf, bevor der Bandlader auf dem Vorfeld fehlt, nicht danach.

Das komplette Projekt steht in der Seitenleiste zum Download bereit, inklusive Beispieldaten für einen vollen Tag mit achtzig Flügen - einfach im Peakboard Designer öffnen und selbst durch die Turnarounds klicken.