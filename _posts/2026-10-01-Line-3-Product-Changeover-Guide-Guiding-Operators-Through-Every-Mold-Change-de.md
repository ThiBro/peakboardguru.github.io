---
layout: post
title: Produktwechsel-Assistent für Linie 3 – Bediener sicher durch jeden Werkzeugwechsel führen
date: 2026-10-01 00:00:00 +0000
tags: production
image: /assets/2026-10-01-11-31-45/title.jpg
bg_alternative: true
description: "Eine Touch-Panel-Anwendung direkt an der Presse, die Bediener Schritt für Schritt durch jeden Produktwechsel führt. Sie erfasst fehlende Werkzeuge und Abweichungen mit Ursachencodes und gibt den Wiederanlauf der Linie erst nach der Qualitätsfreigabe frei."
prompt: |
  Erstelle eine Anwendung für eine Produktionslinie, die Bediener durch einen Produktwechsel führt. Sie soll das aktuelle und das nächste Produkt, die Rüst-Checkliste mit Bestätigung pro Schritt und die benötigten Werkzeuge anzeigen. Über Dialoge soll der Bediener ein fehlendes Werkzeug melden, eine Abweichung mit Ursachencode erfassen und vor dem Wiederanlauf eine Qualitätsfreigabe anfordern können. Füge ein Menü für die Rüsthistorie, den Werkzeugbestand und die Stillstandsursachen hinzu, dazu Beispieldaten für die letzten fünfzehn Produktwechsel.
downloads:
  - name: Peakboard.pbmx
    url: /assets/2026-10-01-11-31-45/Peakboard_de.pbmx
read_more_links:
  - name: Weitere Anwendungsfälle aus der Produktion
    url: /category/production
lang: de
permalink: /de/line-3-product-changeover-guide-guiding-operators-through-every-mold-change/
translation_url: /en/line-3-product-changeover-guide-guiding-operators-through-every-mold-change/
---
An einer Spritzgießlinie gehört der Produktwechsel zu den teuersten Momenten einer Schicht. Die Presse steht, das Werkzeug wird ausgebaut, ein anderes eingebaut – und anschließend müssen Material, Programm, Robotergreifer und Etiketten auf das nächste Produkt umgestellt werden. Jede Minute Stillstand kostet Geld. Kleine Probleme summieren sich schnell: Eine fehlende Kupplung, ein Kran, der gerade anderswo gebraucht wird, oder Probeschüsse, die durch die Prüfung fallen – und schon wird aus einem geplanten 50-Minuten-Wechsel mehr als eine Stunde Stillstand. In diesem Artikel stellen wir eine Anwendung vor, die Bediener durch den gesamten Produktwechsel führt. Kein Schritt wird übersprungen, jede Störung wird mit Ursache erfasst, und die Linie läuft erst wieder an, wenn die Qualitätssicherung freigegeben hat.

![Einführung in den Rüstassistenten für Linie 3](/assets/2026-10-01-11-31-45/intro_frame.png)

## Wer die Anwendung nutzt und wo

Die Anwendung läuft auf einem 1920x1080-Touch-Panel, das direkt an der Presse von Linie 3 montiert ist – in Reichweite des Einrichterarbeitsplatzes. Ein Barcodescanner ist als Tastatur-Wedge angeschlossen, sodass Werkzeuge direkt an der Linie gescannt werden können, sobald sie eintreffen.

Drei Gruppen arbeiten mit dem Bildschirm:

- **Maschinenbediener und Einrichter** arbeiten die Checkliste ab und bestätigen jeden Schritt selbst.
- **Schichtleiter und QS-Prüfer** erhalten Freigabeanfragen und prüfen die Ursachen von Abweichungen.
- **Produktions- und KVP-Ingenieure** nutzen die Rüsthistorie und die Auswertung der Zeitüberschreitungen, um wiederkehrende Verluste aufzuspüren, etwa in SMED-Projekten.

## Der Produktwechsel auf einen Blick

Der Hauptbildschirm zeigt allen an der Linie, wo der Produktwechsel gerade steht.

![Hauptbildschirm des Produktwechsels mit Produktübergang, Checkliste und Werkzeugen](/assets/2026-10-01-11-31-45/de_010.png)

- **Banner mit dem Produktübergang:** Das aktuelle Produkt (`PX-220`, „Gehäusedeckel 220 – grau“) und das nächste Produkt (`PX-310`, „Gehäusedeckel 310 – schwarz“) stehen nebeneinander, dazwischen ein Pfeil. Niemand muss raten, welches Werkzeug, welches Material oder welcher Etikettensatz als Nächstes kommt.
- **Live-Zeiten:** Verstrichene, geplante und verbleibende Minuten sind jederzeit sichtbar. Sobald der Wechsel den Plan überschreitet, färbt sich die Restzeit rot – die Überschreitung ist für alle erkennbar.
- **Sequenzielle Checkliste:** Zehn Schritte folgen der sicherheitsrelevanten Reihenfolge des Prozesses. Sie sind in die Phasen **Abfahren**, **Ausbau**, **Einbau**, **Material**, **Einrichten** und **Probelauf** gegliedert – vom Spülen des Zylinders und Lockout/Tagout über den Wechsel des Robotergreifers bis zu den fünf Probeschüssen. Zu jedem Schritt sieht man den Verantwortlichen (Bediener oder Einrichter) sowie Zeitpunkt und Person der Bestätigung.
- **Benötigte Werkzeuge:** Für jedes Werkzeug werden Lagerplatz und ein farbiger Statusbalken angezeigt. Lila steht für **Bereit**, Grün für **Bereitgestellt** und Rot für **Fehlt**. In den Beispieldaten wurden die Schnellkupplungen aus Regal C1 bereits als fehlend gemeldet.
- **Zähler in der Kopfzeile:** Die Kopfzeile zählt Abweichungen und fehlende Werkzeuge. Der Zähler für fehlende Werkzeuge wird rot, sobald etwas offen ist.

Derselbe Bildschirm in der deutschen Version der Anwendung:

![Hauptbildschirm des Produktwechsels, deutsche Version](/assets/2026-10-01-11-31-45/de_010.png)

## Den Produktwechsel abarbeiten

### Schritte in der richtigen Reihenfolge bestätigen

Der Bediener tippt in jeder Zeile der Checkliste auf **Bestätigen**. Schritte lassen sich nicht überspringen: Wer Schritt 5 vor Schritt 4 bestätigen will, erhält einen Hinweis auf die Sicherheitsreihenfolge. Mit **Rückgängig** wird ein Schritt wieder geöffnet. Wurde bereits eine Qualitätsfreigabe angefordert, wird diese Anfrage dabei zurückgezogen – so kann eine Freigabe nie für einen Prozess gelten, der sich danach noch geändert hat.

### Werkzeuge bereitstellen, sobald sie eintreffen

Kommt ein Werkzeug an der Linie an, scannt der Bediener den Barcode oder tippt auf **Eingetroffen**. Ist für dieses Werkzeug eine Fehlmeldung offen, wird sie automatisch geschlossen, und der Zähler in der Kopfzeile sinkt.

### Probleme sofort melden

Störungen werden direkt an der Presse in Dialogen erfasst, solange die Details noch frisch sind.

![Dialoge für fehlende Werkzeuge und Abweichungen](/assets/2026-10-01-11-31-45/de_020.png)

- **Fehlendes Werkzeug melden:** Der Bediener wählt das Werkzeug aus, legt die Dringlichkeit fest (`Kann warten`, `In 15 Min.` oder `Linienstopp`) und ergänzt einen Kommentar. Eine Meldung mit **Linienstopp** bucht zusätzlich die Abweichung `D01` und löst einen Summer aus, damit sich sofort jemand um das Problem kümmert.
- **Abweichung erfassen:** Der Bediener tippt auf eine Kachel mit dem passenden Ursachencode, stellt die zeitliche Auswirkung per Schieberegler ein und kann eine Notiz hinzufügen. Statt vager Notizen am Schichtende entstehen so Ursachencodes, die sich später auswerten lassen.

![Dialoge für fehlende Werkzeuge und Abweichungen, deutsche Version](/assets/2026-10-01-11-31-45/de_020.png)

### Qualitätsfreigabe vor dem Wiederanlauf anfordern

Bevor die Presse wieder in die Serienproduktion geht, hakt der Bediener drei Anlaufprüfungen ab: **Erstteile**, **Linienfreigabe** sowie **Etiketten und Verpackung**. Anschließend wählt er einen QS-Prüfer aus. Die Anfrage wird erst abgeschickt, wenn alles vollständig ist. Wenige Sekunden später kommt die Freigabe mit einem Bestätigungston zurück – im Beispielprojekt wird sie simuliert.

![Anfrage der Qualitätsfreigabe vor dem Wiederanlauf](/assets/2026-10-01-11-31-45/intro_frame_green.png)

### Den Produktwechsel abschließen

Nach der Freigabe schließt der Bediener den Produktwechsel ab. Er wird in der Historie archiviert, und das nächste Produkt aus der Warteschlange rückt nach. Damit ist der Bildschirm bereit für den nächsten Wechsel.

## Historie, Werkzeuge und Stillstandsursachen

Über ein ausklappbares Menü gelangt man zu drei weiteren Bildschirmen:

- **Rüsthistorie** listet die letzten fünfzehn Produktwechsel mit Kennzahlen auf, sodass sich geplante und tatsächliche Dauer über die Schichten hinweg vergleichen lassen.
- **Werkzeugbestand** ermöglicht es, Menge und Zustand der Werkzeuge anzupassen und Werkzeuge zum aktuellen Produktwechsel hinzuzufügen.
- **Stillstandsursachen** erlaubt das Anlegen neuer Ursachencodes und zeigt die Überschreitungsminuten aufgeschlüsselt nach Ursache. Hier sehen die Ingenieure, welche Ursachen immer wiederkehren.

![Rüsthistorie und Stillstandsanalyse](/assets/2026-10-01-11-31-45/de_030.png)

Die deutsche Version der weiteren Bildschirme:

![Rüsthistorie und Stillstandsanalyse, deutsche Version](/assets/2026-10-01-11-31-45/de_030.png)

## Ergebnis

Der Rüstassistent macht einen kritischen, fehleranfälligen Prozess planbar. Bediener erhalten eine klare Reihenfolge, die sich nicht überspringen lässt. Die ganze Linie sieht die Zeiten und erkennt eine Überschreitung sofort. Fehlende Werkzeuge und Abweichungen werden mit Ursachencodes genau dann erfasst, wenn sie auftreten, statt später rekonstruiert zu werden. Die Qualitätsfreigabe stellt sicher, dass die Presse erst wieder anläuft, wenn die QS zugestimmt hat. Mit der Zeit zeigen Historie und Überschreitungsanalyse, wo Minuten verloren gehen – und liefern damit SMED- und KVP-Projekten eine echte Datengrundlage.