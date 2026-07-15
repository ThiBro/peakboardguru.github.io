---
layout: post
title: Einsatzbereitschafts-Board für Wache 7 - Können wir jetzt ausrücken, und mit wem?
date: 2026-07-15 00:00:00 +0000
tags: emergency-services
image: /assets/2026-07-15-11-40-47/title.jpg
bg_alternative: true
description: "Ein Touch-Board für die Fahrzeughalle einer Freiwilligen Feuerwehr: Verfügbarkeit der Mannschaft samt Qualifikationen, Fahrzeugbereitschaft, laufende Einsätze und Waldbrandgefahr - in drei Sekunden erfasst."
prompt: |
  Erstelle ein Einsatzbereitschafts-Dashboard für eine Freiwillige Feuerwehr zur Anzeige in der Fahrzeughalle. Zeige die verfügbaren Einsatzkräfte mit ihren Qualifikationen, den Bereitschaftsstatus der Fahrzeuge (getankt, Beladung geprüft, Wassertank gefüllt), die aktuell laufenden Einsätze im Ausrückebereich sowie die Wetterlage inklusive Windgeschwindigkeit für die Waldbrandgefahr. Ergänze ein Widget mit dem Übungsplan für die kommende Woche.
downloads:
  - name: Peakboard.pbmx
    url: /assets/2026-07-15-11-40-47/Peakboard_de.pbmx
lang: de
permalink: /de/station-7-readiness-board/
translation_url: /en/station-7-readiness-board/
---
{% include youtube.html id="U4kYO0yNonI" %}


Bei einer Freiwilligen Feuerwehr hängt alles an einer einzigen Frage, die sich in drei Sekunden beantworten lassen muss: Können wir jetzt ausrücken, und mit wem? Anders als bei einer Berufsfeuerwehr, deren Wachabteilung fest vor Ort sitzt, ist die Einsatzbereitschaft einer Freiwilligen Wehr ein bewegliches Ziel. Kameradinnen und Kameraden sind mal verfügbar und mal nicht, Fahrzeugprüfungen bleiben zwischen zwei Einsätzen auf halber Strecke liegen, und die Lage vor dem Hallentor kann an einem trockenen, windigen Nachmittag von Routine auf Rot kippen.

Genau für diese Lücke ist dieses Dashboard gebaut. Es ist ein großformatiges Touch-Board in der Fahrzeughalle, direkt neben den Kleiderständern und wenige Schritte von der Fahrertür des LF entfernt. Es ist das Erste, was man beim Betreten sieht - und der letzte Blick vor dem Aufsitzen.

## Vier Fragen, ein Bildschirm

![Hauptbildschirm des Einsatzbereitschafts-Boards von Wache 7](/assets/2026-07-15-11-40-47/de_010.png)

**Wer ist verfügbar?** Eine Live-Mannschaftsliste zeigt jedes Mitglied der Wehr mit Dienstgrad, Qualifikationen (**Truppführer**, **Notfallsanitäter**, **ABC-Techniker**, **Vegetationsbrandbekämpfung**, **Absturzsicherung**, **Maschinist**) und aktuellem Dienststatus. Eine große Zahl oben sagt dem Einsatzleiter, wie viele Kräfte tatsächlich abrufbar sind. Die Qualifikationen zählen dabei genauso viel wie die reine Zahl: Vier Leute ohne Notfallsanitäter und ohne Maschinist sind eben nicht dieselbe Staffel wie vier Leute mit beidem.

**Welche Fahrzeuge sind bereit?** Jedes Fahrzeug - **LF 71**, **TSF-W 74**, **TLF 79** - bekommt eine Kachel mit Typ und Tankinhalt, dem aktuellen Kraftstoffstand in Prozent und drei unabhängigen Bereitschaftsmerkmalen: Kraftstoff, Beladung und Wassertank. Ein Bereitschaftsbalken und ein deutliches **BEREIT** oder **PRÜFUNG NÖTIG** sorgen dafür, dass ein unvollständiges Fahrzeug quer durch die Halle auffällt.

**Was läuft im Ausrückebereich?** Die Einsatzliste spiegelt die Leitstelle: Einsatzstichwort, Adresse, Priorität, Alarmzeit und aktueller Status (**Alarmiert**, **Anfahrt**, **Vor Ort**). Abgearbeitete Einsätze verschwinden automatisch, die Liste zeigt also immer nur das, was noch läuft. Ein farbiger Prioritätsstreifen am linken Rand jeder Einsatzkachel liefert die Dringlichkeit auf einen Blick.

**Haben wir Waldbrandwetter?** Temperatur, Windgeschwindigkeit und relative Luftfeuchte stehen als drei große Zahlen da, und ein Banner über die volle Breite übersetzt sie darunter in eine einsatztaktische Bewertung: **GERINGE WALDBRANDGEFAHR**, **ERHÖHTE WALDBRANDGEFAHR** oder **WALDBRANDWARNSTUFE ROT**. Der Wind bekommt eine eigene Überschrift, denn er ist die Zahl, die aus einem Flächenbrand von einem Hektar eine überörtliche Lage macht.

## Übungsleiste und Dienstplan

Ganz unten läuft die Übungsleiste: die nächste Übung, wann sie stattfindet und wo. Ein zweiter Bildschirm weitet das zum vollständigen Übungs- und Dienstplan der kommenden sieben Tage auf - mit Ausbildern, Orten, Kennzeichnung als Pflicht- oder freiwilliger Termin und laufender Anmeldezahl.

![Wochenplan für Übungen und Ausbildung](/assets/2026-07-15-11-40-47/de_020.png)

Die Anmeldung zu einer Übung ist ein einziger Tipp auf diesem Bildschirm. Keine Liste am schwarzen Brett, kein Gruppenchat, kein "Ich dachte, du kommst".

## Ein Board, das man im Vorbeigehen pflegt

Das Board ist nicht nur zum Lesen da, und genau das hält es ehrlich. Wer auf der Wache eintrifft, tippt auf den eigenen Namen und setzt den Dienststatus über ein Dropdown. Wer gerade ein Fahrzeug geprüft hat, tippt auf die Fahrzeugkachel, schaltet Kraftstoff, Beladung und Wasser einzeln um, gibt sein Kürzel ein und speichert - das schreibt eine Zeile mit Zeitstempel ins Prüfprotokoll, das jeder Führungsdienst über die Schaltfläche **Prüfprotokoll** aufrufen kann.

Und wenn die Wache selbst außer Dienst geht - Mannschaft anderweitig gebunden, Halle blockiert, Fahrzeug defekt - kippt ein einziger Schalter im Kopfbereich das Banner des ganzen Boards von einem grünen **EINSATZBEREIT** auf ein rotes **NICHT EINSATZBEREIT**, das man noch von der gegenüberliegenden Wand aus liest.

## Die deutsche Variante

Dasselbe Board funktioniert für eine Freiwillige Feuerwehr genauso gut, deshalb haben wir es auch auf Deutsch gebaut. Gleiches Layout, gleicher Drei-Sekunden-Blick, lokalisierte Beschriftungen und Qualifikationsbezeichnungen.

![Einsatzbereitschafts-Board, deutsche Variante](/assets/2026-07-15-11-40-47/de_010.png)

![Übungs- und Dienstplan, deutsche Variante](/assets/2026-07-15-11-40-47/de_020.png)

## Ergebnis

Herausgekommen ist ein Board, das eine Einsatzkraft im Vorbeigehen in fünfzehn Sekunden pflegt und ein Führungsdienst in drei Sekunden liest. Verfügbarkeit, Fahrzeuge, Einsätze und Brandwetter sind damit keine vier getrennten Gespräche mehr, sondern ein Blick an die Wand neben den Kleiderständern.