---
layout: post
title: Bankett- und Tagungsetage im Griff - Veranstaltungsräume eines Hotels mit Peakboard steuern
date: 2026-08-20 00:00:00 +0000
tags: hotel
image: /assets/2026-08-20-10-57-41/title.jpg
bg_alternative: true
description: "Ein Touch-Dashboard für die Bankett- und Tagungsetage eines großen Hotels: zwölf Veranstaltungsräume, laufende und nächste Buchungen, eine virtuelle Etagenuhr, Buchungsänderungen und ein geführter Umbau-Assistent."
prompt: |
  Erstelle eine Anwendung, die die Bankett- und Tagungsetage eines großen Hotels steuert. Zeige jeden Veranstaltungsraum mit seiner aktuellen und nächsten Buchung, der Bestuhlungsvariante, den Cateringpausen und den technischen Anforderungen. Die Mitarbeiter sollen eine Buchung öffnen können, um die Bestuhlung zu ändern, Zusatzequipment hinzuzufügen oder eine Pausenzeit zu verschieben. Ein Umbau-Dialog soll das Team in mehreren Phasen durch das Zurücksetzen eines Raums führen, inklusive Checklisten-Bestätigung. Liefere Beispieldaten für zwölf Räume über drei Tage.
downloads:
  - name: Peakboard.pbmx
    url: /assets/2026-08-20-10-57-41/Peakboard_de.pbmx
read_more_links:
  - name: Weitere Anwendungsfälle aus der Hotellerie
    url: /category/hotel
  - name: Weitere Anwendungsbeispiele
    url: /category/usecase
lang: de
permalink: /de/meetings-banqueting-floor-control-running-a-hotels-function-rooms-with-peakboard/
translation_url: /en/meetings-banqueting-floor-control-running-a-hotels-function-rooms-with-peakboard/
---
{% include youtube.html id="VfXkf4CJhig" %}


Große Hotels stehen und fallen mit ihrer Bankett- und Tagungsetage. Zwölf Veranstaltungsräume, vom Grand Ballroom mit 800 Plätzen bis zum Executive Boardroom mit 24 Plätzen, jeder zwei- bis dreimal am Tag neu belegt, jeder mit eigenem Kunden, eigener Bestuhlung, eigenen Cateringpausen und eigener Technikausstattung. Ein vergessener Umbau, ein nicht bereitgestellter Beamer oder Kaffee, der erst eine Viertelstunde nach dem Ende des Vortrags kommt – genau solche Kleinigkeiten bleiben dem Kunden noch lange nach der Veranstaltung im Gedächtnis.

![Startbild des Dashboards zur Steuerung der Bankettetage](/assets/2026-08-20-10-57-41/intro_frame.png)

In diesem Artikel schauen wir uns eine Anwendung an, die als operative Schaltzentrale für diese Etage dient.

## Der Bildschirm, an dem alle vorbeikommen

Das Dashboard ist für einen Touchscreen im Bankettbüro oder im Servicegang hinter den Kulissen gedacht – also dort, wo Duty Manager, Bankettsupervisoren, AV-Techniker und Housekeeping im Lauf ihrer Schicht ohnehin ständig vorbeigehen. Auf einen Blick beantwortet es die drei Fragen, die gerade jetzt zählen: Welche Räume sind belegt, wie viele Gäste sind auf der Etage, und wie viele Räume müssen innerhalb der nächsten Stunde umgebaut werden?

Alles unterhalb dieser Kennzahlen ist Arbeitsfläche, kein Bericht. Niemand muss zum Schreibtisch-PC zurücklaufen, um etwas zu ändern.

![Übersichtstafel mit allen zwölf Veranstaltungsräumen](/assets/2026-08-20-10-57-41/de_010.png)

## Die Etagentafel und die virtuelle Uhr

Die Haupttafel listet alle zwölf Räume auf, je einen pro Zeile, und zeigt die gerade laufende Buchung, die nächste Buchung, die **Bestuhlungsvariante**, die Zeiten der Cateringpausen sowie die technischen Anforderungen.

Das Besondere ist die virtuelle Etagenuhr. Über einen Schieberegler in der Kopfzeile lässt sich der Betriebstag in Halbstundenschritten zwischen **07:00** und **23:00 Uhr** durchfahren. Zieht man ihn auf 15:30 Uhr, berechnet die Tafel sofort neu, was um 15:30 Uhr laufen wird. Genau so plant ein Supervisor die Personalbesetzung für den Nachmittag: nicht „was passiert jetzt“, sondern „wie sieht die Etage aus, wenn die zweite Kaffeepause ansteht“.

Drei Tages-Reiter wechseln zwischen Montag, Dienstag und Mittwoch, sodass das Team den Kongress, der morgen weitergeht, im Blick behalten kann, ohne den Bildschirm zu verlassen.

![Detaildialog einer Buchung mit Bestuhlung, Gästezahl und Equipment](/assets/2026-08-20-10-57-41/de_020.png)

## Buchungen direkt auf der Etage ändern

Im Bankettgeschäft ändert sich immer etwas. Die Buchung wird direkt aus der Zeile heraus geöffnet, und ein großer Overlay-Dialog erscheint:

- Die **Bestuhlungsvariante** lässt sich über ein Dropdown wechseln, und eine Live-Prüfung warnt sofort, ob der Raum in dieser Konfiguration noch so viele Personen fasst.
- **Gästezahlen** werden mit numerischer Validierung eingegeben.
- Ein Schieberegler verschiebt beide **Cateringpausen** in Viertelstundenschritten nach vorn oder hinten – mit Vorschau der neuen Pausenzeiten im Klartext, bevor irgendetwas übernommen wird.
- **Technische Anforderungen** werden per Checkbox an- und abgewählt.
- **Zusatzequipment** wird über Plus- und Minus-Schaltflächen zwischen einem Katalog aus zwölf mietbaren Positionen und der Equipmentliste der Buchung hinzugefügt oder entfernt, inklusive laufender Zusatzkostensumme in Euro.

Eine Freitextnotiz hält den Grund fest, und jede Änderung wandert in ein Änderungsprotokoll. Wer um 14:10 Uhr die Pause verschoben hat, ist im Nachhinein nie ein Rätsel.

## Der Umbau-Assistent

Die zweite Säule ist der Umbau. Wenn ein Raum zwischen zwei Veranstaltungen zurückgesetzt werden muss, startet das Team einen geführten Ablauf in drei Phasen: **Raum räumen**, **Bestuhlung aufbauen**, **prüfen und übergeben**. Neun Checklistenpunkte werden abgehakt, ein Phasenbanner zeigt, wo das Team gerade steht, und daneben stehen die Zielbestuhlung sowie die Standard-Umbauzeit für diese Variante – damit alle wissen, was „fertig“ bedeutet.

Erst wenn das Team gemeinsam mit dem Duty Manager durch den Raum gegangen ist und abgezeichnet hat, wird der Raum wieder für den Betrieb freigegeben. Diese Freigabe schreibt einen Protokolleintrag mit Raum, Bestuhlung, Bearbeiter und Dauer.

![Umbau-Assistent mit Checkliste und Phasenbanner](/assets/2026-08-20-10-57-41/de_030.png)

## Der Kreis schließt sich im Logbuch

Der Logbuch-Bildschirm zeigt die abgeschlossenen Umbauten neben der Historie der Buchungsänderungen. Jede Frage danach, wer eine Pause verschoben oder wer die Terrassenheizstrahler bestellt hat, ist in Sekunden beantwortet – wichtig sowohl für die interne Nachbesprechung als auch für das spätere Rechnungsgespräch mit dem Kunden.

![Alternatives Startbild des Dashboards](/assets/2026-08-20-10-57-41/intro_frame_green.png)

## Ergebnis

Das Beispielprojekt bringt zwölf Räume über drei Tage mit, sodass sich die Etagenuhr durchfahren, eine Buchung öffnen, eine Pause verschieben und ein kompletter Umbau durchspielen lässt, ohne eine einzige Datenquelle anzubinden. In einer produktiven Installation kämen die Raum- und Buchungsdaten aus dem Veranstaltungsmanagementsystem des Hotels, während Umbauprotokoll und Änderungshistorie dort bleiben, wo das Etagenteam sie erreicht: auf dem Bildschirm, an dem es pro Schicht ohnehin zwanzigmal vorbeigeht.
```

The trailing italic note about the German screenshots was an authoring instruction for the EN file, so I left it out of the DE version.