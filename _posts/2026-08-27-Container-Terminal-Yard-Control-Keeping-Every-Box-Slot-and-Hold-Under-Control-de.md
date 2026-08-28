---
layout: post
title: Container-Terminal Yard Control – Jede Box, jeder Slot und jede Sperre im Griff
date: 2026-08-27 00:00:00 +0000
tags: logistics transportation
image: /assets/2026-08-27-15-15-32/title.jpg
bg_alternative: true
description: "Ein Yard-Planungs-Dashboard für ein Container-Terminal: Blockauslastung, Standzeiten, Gefahrgut- und Zollsperren sowie Umfuhraufträge, Inspektionen und Sperren direkt vom Touchdisplay."
prompt: |
  Entwirf eine Anwendung für ein Container-Terminal, die Yard-Slots und Umfuhren verwaltet. Zeige Yard-Blöcke mit Auslastung, Containerdetails, Standzeit und Gefahrgutkennzeichnung, und ermögliche es einem Planer, einen Container zu öffnen, um ihm einen neuen Slot zuzuweisen, eine Inspektion zu buchen oder ihn zur Abholung freizugeben. Baue einen Dialog für Umfuhraufträge mit Geräteauswahl und einen Zollsperr-Dialog ein, der eine Referenznummer verlangt. Stelle Beispieldaten für mehrere hundert Container über acht Blöcke hinweg bereit.
downloads:
  - name: Peakboard.pbmx
    url: /assets/2026-08-27-15-15-32/Peakboard_de.pbmx
read_more_links:
  - name: Weitere Use Cases aus der Logistik
    url: /category/logistics
  - name: Weitere Use-Case-Beispiele
    url: /category/usecase
lang: de
permalink: /de/container-terminal-yard-control/
translation_url: /en/container-terminal-yard-control/
---
{% include youtube.html id="QhiX-DQ-MUU" %}


Ein Container-Terminal steht und fällt damit, wie genau es weiß, wo jede einzelne Box steht, wie lange sie dort schon steht und was sie am Verlassen des Terminals hindert. In diesem Artikel schauen wir uns eine Anwendung an, die genau als Arbeitsoberfläche für diese Aufgabe gebaut ist: für den Yard-Planer, der diese drei Fragen die ganze Schicht über beantworten muss – am Touchdisplay, ohne Tastatur in Reichweite.

![Dashboard für die Yard-Steuerung im Container-Terminal](/assets/2026-08-27-15-15-32/intro_frame.png)

## Der gesamte Yard auf einem Bildschirm

Ganz oben im Dashboard sitzt eine KPI-Leiste, die die Frage „Wie sieht es gerade aus?" beantwortet, bevor überhaupt jemand anfängt zu filtern. Sie zeigt, wie viele Container aktuell auf dem Platz stehen, wie viele davon Gefahrgut sind und damit besondere Handhabung und Geräte brauchen, wie viele unter Zollsperre liegen, wie viele freigegeben sind und auf einen Trucker zur Abholung warten – und wie die durchschnittliche Standzeit über den gesamten Yard aussieht.

Die Standzeit ist die Kennzahl, die still und leise Geld kostet. Jeder zusätzliche Tag, den eine Box einen Slot belegt, ist ein Slot, der nicht an den nächsten Schiffsanlauf verkauft werden kann. Schlimmer noch: Genau die Langsteher werden unter drei Lagen neuerer Ankünfte begraben und brauchen dann drei unproduktive Umfuhren, um wieder freigelegt zu werden. Wenn dieser Durchschnittswert den ganzen Tag an der Wand hängt, ändert das den Umgang eines Planers mit dem unteren Ende des Stapels.

![Yard-Übersicht mit KPI-Leiste und Block-Kacheln](/assets/2026-08-27-15-15-32/de_010.png)

## Acht Blöcke, acht Kacheln

Unter den KPIs werden die acht Yard-Blöcke des Terminals als Kacheln dargestellt: der Export-Stack, der Import-Stack, die Reefer-Plätze mit ihren Stromanschlüssen, die Gefahrgutzone, der Transshipment-Bereich, das Leercontainer-Depot, ein Import-Überlaufblock sowie der Block für Langsteher und Out-of-Gauge-Ladung.

Jede Kachel trägt die Zweckbestimmung des Blocks, die belegten Slots gegen die nominale Kapazität und die prozentuale Auslastung. Das reicht, damit ein Planer sofort sieht, dass der Reefer-Block fast gesättigt ist, während das Leerdepot noch Platz hat – und die nächste Löschung entsprechend lenkt. Eine Entscheidung, die sonst einen Telefonanruf und einen Gang ans Fenster kostet.

## Die Containertabelle ist der eigentliche Arbeitsplatz

Der zentrale Arbeitsbereich ist eine filterbare Containertabelle mit mehreren hundert Boxen. Der Planer grenzt sie über den Block ein, über den Status, über ein Fragment der Containernummer im Suchfeld oder über den Schalter **nur Gefahrgut** – und arbeitet dann ab, was übrig bleibt.

Die Zeilen sind farbcodiert, sodass Probleme ins Auge fallen, bevor überhaupt etwas gelesen wird:

- **Gesperrte** Einheiten sind rot eingefärbt
- **Freigegebene** Einheiten sind grün
- **Gefahrgut** ist bernsteinfarben – unabhängig vom Status

Die letzte Regel ist wichtig: Eine Gefahrgutbox bleibt optisch markiert, auch wenn mit ihr alles in Ordnung ist, denn die nachgelagerte Geräteentscheidung hängt daran.

![Filterbare Containerliste mit farbcodierten Zeilen](/assets/2026-08-27-15-15-32/de_020.png)

## Einen Container öffnen

Ein Tippen auf eine beliebige Zeile öffnet den Container. Der Planer sieht den vollständigen Datensatz: die Stauposition bis hinunter auf Bay, Row und Tier, Containertyp und -größe, Reederei, Schiff, Zielort, Bruttogewicht, Standtage, Gefahrgutklasse, Reefer-Kennzeichen, aktuelle Zollreferenz und Priorität. Darunter liegt die komplette Historie aller Vorgänge, die diese Box jemals betroffen haben.

Aus der Detailansicht heraus stehen drei Dialoge und eine Direktaktion zur Verfügung.

### Umfuhrauftrag

Den Container einem anderen Slot zuweisen und festlegen, welches Gerät den Hub übernimmt – Portalkrane auf Gummireifen, Reachstacker inklusive des gefahrgutzertifizierten, der Leercontainer-Handler, der Van Carrier oder eine Terminalzugmaschine. Der Planer setzt eine Priorität, benennt den verantwortlichen Planer und ergänzt eine Notiz, die der Fahrer zu sehen bekommt.

Der Zielslot wird gegen die Slot-Syntax des Terminals validiert, damit ein Tippfehler nie in den Betrieb gelangt. Ein Fahrer, der zu einer nicht existierenden Bay geschickt wird, bedeutet eine verlorene Umfuhr plus Funkspruch plus Neuplanung – und hier ist die günstigste Stelle, das abzufangen.

### Inspektionsbuchung

Eine Siegelkontrolle, eine vollständige physische Beschau, ein Reefer-Temperaturaudit, eine Prüfung der Gefahrgutplakate, eine VGM-Gewichtsverifizierung oder einen Scannerdurchlauf in eines der Tageszeitfenster einplanen – mit namentlich hinterlegtem Prüfer.

### Zollsperre

Einen Container unter Sperre stellen. Dieser Dialog verweigert bewusst die Ausführung, solange keine korrekt formatierte Zollreferenznummer vorliegt. Denn eine Sperre ohne Referenz ist für alle Nachgelagerten unbrauchbar: Niemand kann sie nachschlagen, nachverfolgen oder auflösen. Dass das Feld schon bei der Eingabe Pflicht ist, hält die Sperrliste auch eine Woche später noch handlungsfähig.

### Freigabe zur Abholung

Die vierte Aktion braucht überhaupt keinen Dialog. Ein Tippen gibt die Box zur Abholung frei.

![Containerdetailansicht mit den Planerdialogen](/assets/2026-08-27-15-15-32/de_030.png)

## Ein Audit-Trail, den niemand pflegen muss

Alles, was ein Planer tut, landet in einem Audit-Trail, an den nur angehängt wird. Ein separater Protokollbildschirm bündelt die offenen Umfuhraufträge, sämtliche Zollsperren, alle gebuchten Inspektionen und die vollständige Audit-Historie an einer Stelle.

Das ist der Bildschirm, den ein Schichtleiter öffnet, wenn eine Box ihr Truck-Zeitfenster verpasst hat – und der Bildschirm, den ein Zollbeamter öffnet, wenn er wissen will, wer wann einen gesperrten Container angefasst hat. Weil er ein Nebenprodukt des normalen Arbeitsablaufs ist und keine separate Berichtspflicht, ist er tatsächlich vollständig. Das lässt sich von den meisten Yards, die mit Whiteboard und Tabellenkalkulation arbeiten, nicht behaupten.

## Gebaut für den realen Alltag im Yard-Büro

Der Bildschirm gehört in die Yard-Planung des Terminals auf ein großes Wand- oder Tisch-Touchdisplay – und funktioniert genauso gut auf dem Touch-Terminal eines Schichtleiters.

Das Detail, das alles zusammenhält, ist der globale Key-Handler. Ein Handscanner für Barcode oder RFID kann direkt auf ein Container-Plakat gehalten werden: Passt der gescannte Wert exakt, springt die Anwendung unmittelbar in die Detailansicht dieses Containers. Alles andere landet als Filter im Suchfeld des Yards. Keine Tastatur, keine Maus, kein Durchsuchen von acht Blöcken nach einer Nummer, die jemand über Funk durchgegeben hat.

![Yard Control im Einsatz](/assets/2026-08-27-15-15-32/intro_frame_green.png)

## Ergebnis

Was mit drei Fragen beginnt – wo steht die Box, wie lange steht sie schon da, was blockiert sie –, endet als eine einzige Touch-Oberfläche, die alle drei beantwortet und den Planer im selben Atemzug handeln lässt. Die Blockauslastung ist sichtbar, bevor die Schicht beginnt, Problemcontainer färben sich selbst ein, und jeder Umfuhrauftrag, jede Inspektion und jede Sperre wird mit genau dem Kontext festgehalten, den der Nächste in der Kette braucht.

Das Beispielprojekt bringt mehrere hundert Container verteilt über alle acht Blöcke mit – Sie können sich also sofort durch einen realistischen Yard filtern, öffnen, umfahren, sperren und freigeben.