---
layout: post
title: Schichtübergabe-Board Station 4B - die riskantesten zehn Minuten in der Pflege sicherer machen
date: 2026-08-05 00:00:00 +0000
tags: healthcare
image: /assets/2026-08-05-16-45-00/title.jpg
bg_alternative: true
description: "Ein Touch-Board für Krankenhausstationen, das die pflegerische Schichtübergabe zu einem strukturierten, nachvollziehbaren Prozess macht - dreißig Betten, Risikostufen, SBAR-Notizen und Eskalationen auf einem Bildschirm."
prompt: |
  Entwirf eine Anwendung für eine Krankenhausstation, die die Schichtübergabe zwischen den Pflegeteams unterstützt. Sie soll alle belegten Betten mit Patientenstatus, Mobilität, Allergien und offenen Aufgaben darstellen und es einer Pflegekraft ermöglichen, jedes Bett zu öffnen, um Beobachtungen zu erfassen, ein Anliegen zu eskalieren oder eine Aufgabe als erledigt zu markieren. Ein Übergabedialog soll es der abgebenden Schicht erlauben, strukturierte Notizen je Patient zu verfassen und die Übergabe zu bestätigen. Ergänze Filter für Risikostufe und Fachbereich sowie Beispieldaten für dreißig Betten.
downloads:
  - name: Peakboard.pbmx
    url: /assets/2026-08-05-16-45-00/Peakboard_de.pbmx
read_more_links:
  - name: Mehr Anwendungsfälle aus dem Gesundheitswesen
    url: /category/healthcare
  - name: Weitere Anwendungsbeispiele
    url: /category/usecase
lang: de
permalink: /de/ward-4b-shift-handover-board/
translation_url: /en/ward-4b-shift-handover-board/
---
{% include youtube.html id="KxJm427cilc" %}


Die Schichtübergabe gehört zu den riskantesten Momenten im Krankenhausalltag. Alles, was das abgebende Team über dreißig Patienten weiß - wer sich verschlechtert, wer auf keinen Fall Penicillin bekommen darf, wer bettlägerig ist und alle zwei Stunden umgelagert werden muss, welche Aufgaben niemand mehr geschafft hat - muss in wenigen gedrängten Minuten beim nachfolgenden Team ankommen. Meist mündlich. Meist unvollständig. In diesem Artikel schauen wir uns ein Board an, das den handschriftlichen Übergabezettel und die halb erinnerte Kurzbesprechung durch einen interaktiven Bildschirm ersetzt, vor dem beide Schichten gemeinsam stehen können.

![Übergabe-Board der Station 4B mit dreißig Bettenkacheln](/assets/2026-08-05-16-45-00/de_010.png)

## Wo das Board hängt

Der Bildschirm ist für ein großes Touch-Display im Stützpunkt der Station 4B gedacht, idealerweise direkt neben dem Medikamentenraum - denn dort stehen die abgebende Frühschicht und die ankommende Spätschicht ohnehin. Dasselbe Projekt läuft außerdem auf einem fahrbaren Wagen, der bei der Visite über den Flur geschoben wird, sodass die Übergabe am Bett statt am Schreibtisch stattfinden kann.

Genutzt wird es von examinierten Pflegekräften und Pflegehelfern sowie von der Stationsleitung, die die Übergabe begleitet. Ärzte sind indirekt beteiligt - sie sind die Empfänger der eskalierten Anliegen.

## Dreißig Betten auf einen Blick

Die Hauptansicht zeigt jedes belegte Bett als kompakte Kachel: Bettnummer, Zimmer, Patientenname, aktueller klinischer Status (stabil, unter Beobachtung, postoperativ, verschlechternd, Entlassung geplant), die Mobilitätsstufe (selbstständig, Gehhilfe, Rollstuhl, bettlägerig), die bekannten Allergien und ein Zähler für offene Aufgaben.

Ein farbiger Streifen am linken Rand kodiert die Risikostufe, sodass sich die Station schon von der anderen Seite des Raums lesen lässt: Orange für kritisch, Bernstein für hoch, Cyan für mittel, Petrol für niedrig. Bereits übergebene Betten verblassen zu einer grauen Kachel - das Team sieht also sofort, was noch aussteht, ohne nachfragen zu müssen.

Über dem Raster fassen vier KPI-Kacheln die Station zusammen - belegte Betten, kritische Patienten, offene Aufgaben und Übergabefortschritt -, und eine Reihe von Chips zeigt, wie viele Betten in welcher Risikoklasse liegen. Filter für Risikostufe und Fachbereich grenzen das Raster ein, wenn die Stationsleitung etwa nur die kritischen Fälle der Kardiologie sehen möchte.

![Filter, KPI-Kacheln und Risiko-Chips über dem Bettenraster](/assets/2026-08-05-16-45-00/de_020.png)

## Wer hat was wann geschrieben

Eine Pflegekraft meldet sich an, indem sie ihren Namen aus einem Dropdown oben rechts auswählt. Ab diesem Moment wird jeder Eintrag mit ihrem Namen und der aktuellen Uhrzeit versehen. So entsteht ein belastbarer Nachweis als Nebenprodukt der normalen Arbeit, ohne ein einziges zusätzliches Formular - und genau diese Art von Dokumentation bleibt sonst gern liegen, wenn sie eine eigene Aufgabe ist.

## Ein Bett öffnen

Ein Tipp auf eine Bettenkachel öffnet einen Detaildialog über dem Board. Die Pflegekraft kann Mobilität und klinischen Status über Dropdowns anpassen, eine Freitext-Beobachtung eingeben, sie kategorisieren (Vitalzeichen, Schmerz, Wundversorgung, Ernährung, Verhalten, Mobilität) und im Schichtprotokoll speichern.

Auf der rechten Seite des Dialogs stehen die offenen Aufgaben dieses Bettes - **alle 2 Stunden umlagern**, **Verbandwechsel**, **kontinuierliches EKG-Monitoring** - jeweils mit Priorität und einer Schaltfläche **Erledigt**, die die Aufgabe entfernt und den Zähler auf der Kachel hinter dem Dialog herunterzählt.

Wenn etwas Sorge bereitet, öffnet ein roter Button **Anliegen eskalieren** einen zweiten Dialog: Die Pflegekraft beschreibt das Problem, wählt eine Dringlichkeit zwischen Routine und Notfall und löst eine Meldung an das ärztliche Team aus. Aus einem "das sage ich dem Arzt, wenn ich ihn sehe" wird ein nachverfolgter Vorgang mit Zeitstempel und Namen.

![Bett-Detaildialog mit Beobachtungen und offenen Aufgaben](/assets/2026-08-05-16-45-00/intro_frame.png)

## Die Übergabe selbst

Die Übergabe hat einen eigenen Bildschirm. Die abgebende Schicht arbeitet eine Warteschlange der noch nicht übergebenen Betten ab, das höchste Risiko zuerst - wird die Übergabe durch einen Notfall abgebrochen, sind die wichtigsten Patienten also bereits besprochen.

Für jedes Bett wird ein strukturiertes **SBAR**-Formular ausgefüllt: Situation, Background, Assessment, Recommendation. Die Notiz wird gespeichert und anschließend über einen bewussten Bestätigungsdialog freigegeben. In diesem Moment verschwindet das Bett aus der Warteschlange, seine Kachel wird auf dem Board grau und der KPI zum Übergabefortschritt steigt. Ein Streifen am unteren Rand zeigt die bereits in dieser Schicht verfassten Notizen, sodass das ankommende Team sie nachlesen kann, statt sich auf die Erinnerung an das eben Gesagte zu verlassen.

![Übergabebildschirm mit SBAR-Formular und Bettenwarteschlange](/assets/2026-08-05-16-45-00/intro_frame_green.png)

## Den Kreis schließen

Ein dritter Bildschirm ist das Schicht-Aktivitätsprotokoll: zwei parallele Spalten, links alle Beobachtungen, rechts alle eskalierten Anliegen. Jedes Anliegen trägt eine Schaltfläche **Erledigen**, mit der die Stationsleitung den Vorgang schließt, sobald ein Arzt tatsächlich reagiert hat. Anliegen, die offen bleiben, bleiben sichtbar - und genau darum geht es.

## Tippen, wischen, scannen

Neben Touch versteht das Board auch einen Barcode-Scanner. Das Scannen eines Armbands oder eines Bettschilds wie `B17` springt direkt in den Dialog dieses Bettes - eine Pflegekraft am Bett mit Handscanner muss also nicht die richtige Kachel in einem Raster aus dreißig suchen. Wischgesten wechseln zwischen den drei Bildschirmen, wenn das Board als Touch-Wand genutzt wird.

Die deutschsprachige Variante des Boards funktioniert identisch - dasselbe Raster, dieselben Dialoge, dasselbe SBAR-Formular, nur mit lokalisierten Beschriftungen:

![Deutsche Variante des Bettenrasters](/assets/2026-08-05-16-45-00/de_010.png)

![Deutsche Variante mit Filtern und KPI-Kacheln](/assets/2026-08-05-16-45-00/de_020.png)

## Ergebnis

Aus einer mündlichen Kurzbesprechung, deren Qualität davon abhing, wie müde die abgebende Pflegekraft war, wird ein sichtbarer, strukturierter Prozess mit Zeitstempel. Die ankommende Schicht sieht auf einen Blick, welche Betten kritisch sind, welche Aufgaben noch offen sind und was das abgebende Team beobachtet hat - und die Stationsleitung erkennt jederzeit, wie weit die Übergabe fortgeschritten ist. Genau die Informationen, die auf dem Flur verloren gehen, sind die, aus denen später Zwischenfälle werden. Dieses Board ist dafür gebaut, sie nicht verloren gehen zu lassen.