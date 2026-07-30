---
layout: post
title: Fuhrpark-Zyklussteuerung im Steinbruch – Muldenkipper-Zykluszeiten sichtbar machen im Steinbruch North Ridge
date: 2026-07-29 00:00:00 +0000
tags: transportation production
image: /assets/2026-07-29-12-33-48/title.jpg
bg_alternative: true
description: "Ein Disponenten-Dashboard für den Tagebau-Steinbruch: Es verfolgt die Zykluszeiten der Muldenkipper, meldet Fahrzeuge, die länger als eine einstellbare Schwelle stehen, und lässt die Disposition den Fuhrpark direkt vom Wanddisplay aus neu verteilen."
prompt: |
  Erstelle ein Dashboard für einen Tagebau-Steinbruch, das die Zykluszeiten der Muldenkipper zwischen Lader und Brecher verfolgt. Zeige die durchschnittliche Zykluszeit, die geförderten Tonnen pro LKW und Schicht sowie ein gestapeltes Balkendiagramm der Zyklusphasen (Beladen, Transport, Abkippen, Rückfahrt). Ergänze eine Kachel für Standzeit-Alarme, die LKWs markiert, die in einer Phase länger als drei Minuten warten, damit die Disposition den Fuhrpark neu verteilen kann.
downloads:
  - name: Peakboard.pbmx
    url: /assets/2026-07-29-12-33-48/Peakboard_de.pbmx
read_more_links:
  - name: Weitere Use-Case-Beispiele
    url: /category/usecase
  - name: Weitere Artikel aus dem Bereich Transport
    url: /category/transportation
lang: de
permalink: /de/quarry-fleet-cycle-control/
translation_url: /en/quarry-fleet-cycle-control/
---

In einem Tagebau-Steinbruch ist die wichtigste Kennzahl ausgerechnet die, die niemand mit bloßem Auge sieht: die Zykluszeit der Muldenkipper. Also die Anzahl Minuten, die ein LKW braucht, um am Bagger beladen zu werden, zum Brecher zu fahren, abzukippen und zurück an die Abbaukante zu kommen. Zieht sich dieser Zyklus pro Fahrzeug um drei oder vier Minuten in die Länge, verliert die Schicht hunderte Tonnen Durchsatz, der Brecher läuft halb leer, und vor einem einzigen Lader bildet sich eine Schlange, während der Rest der Grube stillsteht. Im Leitstand spürt jeder, dass etwas nicht stimmt – aber niemand kann auf die Minute zeigen, in der es passiert.

Genau diesen unsichtbaren Verlust macht dieses Dashboard sichtbar und vor allem handhabbar. Es ist für den Disponenten im Leitstand des Steinbruchs North Ridge gebaut und für ein großes, an der Wand montiertes Touchdisplay ausgelegt, das Schichtführer, Laderaufsicht und Disponent aus mehreren Metern Entfernung ablesen können.

## Die Schicht auf einen Blick

Die obere Reihe beantwortet die Frage „Wie läuft die Schicht?" in einem einzigen Blick: durchschnittliche Zykluszeit über den gesamten Fuhrpark, Tonnen pro LKW und Schicht sowie die Gesamttonnage der laufenden Schicht. Diese drei Zahlen sind es, die der Schichtführer über Funk durchgibt – und sie sind groß genug, um sie von der Tür aus zu lesen.

Daneben sitzt die Kachel für die Standzeit-Alarme, das operative Herzstück des Bildschirms. Sie zählt jedes Fahrzeug, das länger als die eingestellte Schwelle stillsteht – standardmäßig drei Minuten – ganz gleich, in welcher Phase des Zyklus es festhängt. Eine rot umrandete Kachel mit Warnzeichen und großer roter Zahl ist das Signal, dass die Disposition **jetzt** eingreifen muss und nicht erst am Schichtende.

![Steinbruch-Dashboard mit Zyklus-KPIs und Kachel für Standzeit-Alarme](/assets/2026-07-29-12-33-48/de_010.png)

## Wo die Minuten tatsächlich hingehen

Unter der KPI-Reihe zerlegt das gestapelte Balkendiagramm den Zyklus jedes LKW in die Minuten für **Beladen**, **Transport**, **Abkippen** und **Rückfahrt**. Hier hört die Ursachensuche auf, Rätselraten zu sein. Sind die Beladebalken bei allen Fahrzeugen hoch, die **LDR-1** zugeordnet sind, ist der Lader der Engpass – und die Lösung heißt: LKWs auf eine andere Abbaukante umlenken. Sind dagegen die Transportbalken flächendeckend gewachsen, muss vermutlich die Fahrpiste nachgezogen werden, oder die Rampe ist hinter einer langsamen Maschine verstopft.

Die Fuhrpark-Detailtabelle darunter liefert Fahrername, aktuellen Status, Zyklusminuten, Tonnen und Standzeit pro Fahrzeug. Ein Farbbalken am linken Rand jeder Zeile wechselt auf Bernstein, sobald ein LKW wartet, und zurück auf Grün, sobald er neu disponiert wurde. So kann der Disponent einfach die linke Kante der Tabelle überfliegen, statt jede Zahl zu lesen.

![Gestapeltes Diagramm der Zyklusphasen und Fuhrpark-Detailtabelle](/assets/2026-07-29-12-33-48/de_020.png)

## Neu verteilen, ohne den Bildschirm zu verlassen

Die Bedienung ist bewusst vielfältig gehalten – denn ein Disponent steht mal vor dem Display, sitzt mal am Schreibtisch und hat sehr oft das Funkgerät in der Hand.

Jede Alarmzeile bringt ihren eigenen **Dispatch**-Button mit, der einen modalen Dialog zur Neuverteilung genau dieses Fahrzeugs öffnet. Der Dialog zeigt den LKW, seinen Fahrer, die Phase, in der er feststeckt, und seit wann. Dazu gibt es zwei Auswahllisten: Zuordnung zu einem anderen Lader und Umleitung der Ladung an ein anderes Ziel (Brecher A, Brecher B, Halde Nord oder Abraumkippe). Die Bestätigung setzt den Standzeit-Zähler zurück, schaltet den Status auf **Neu disponiert** und schreibt eine Zeile ins Dispositionsprotokoll. Ist die Disposition gerade anderweitig gebunden, verschafft **Snooze** dem Fahrzeug eine Karenzzeit, ohne den Vorgang aus den Augen zu verlieren.

Die Standzeit-Schwelle selbst ist nicht fest verdrahtet. Ein Schieberegler neben der Alarmkachel erlaubt es, sie in einer Push-Schicht auf eine Minute zu verschärfen oder während eines Sprengfensters auf neun Minuten zu lockern – die Alarmliste filtert sich sofort neu. Ein Schalter aktiviert die **automatische Neuverteilung**, die Fahrzeuge über der Schwelle ohne menschliches Zutun dem nächsten Lader zuweist; praktisch für Nachtschichten mit dünner Besetzung. Und für den Fall „Funkgerät in der einen Hand": Wer eine LKW-Nummer über das Tastenfeld eingibt oder einen Fahrzeugausweis scannt, landet direkt im Dispositionsdialog dieses Fahrzeugs – ganz ohne den Bildschirm zu berühren.

## Die Dispositionskonsole

Ein zweiter Screen dient der Nachbetrachtung und dem Ausgleich: Welcher Lader hat die meisten Tonnen bewegt, wie viele LKWs bedient er, wie hoch ist seine durchschnittliche Zykluszeit – und dazu ein vollständiges chronologisches Protokoll aller Dispositionsaktionen der Schicht. Der Schichtführer nutzt es in der Übergabebesprechung, um zu erklären, warum der Fuhrpark um 09:40 Uhr umgestellt wurde. Zu Beginn einer neuen Schicht lässt sich das Protokoll leeren.

![Dispositionskonsole mit Lader-Performance und Aktionsprotokoll](/assets/2026-07-29-12-33-48/de_030.png)

## Ergebnis

Das Dashboard verwandelt eine Zahl, die früher am Tag nach der Schicht in einer Tabellenkalkulation auftauchte, in etwas, worauf der Leitstand innerhalb von Minuten reagiert. Die Disposition sieht, dass ein LKW hängt, sieht in welcher Phase, und verteilt ihn mit zwei Fingertipps neu – und der Lader-Vergleich auf dem zweiten Screen zeigt, ob sich diese Entscheidung in Tonnen ausgezahlt hat. Genau das ist der ganze Regelkreis: den Zyklus messen, den wartenden LKW erkennen, ihn umlenken und das Ergebnis noch vor Schichtende überprüfen.