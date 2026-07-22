---
layout: post
title: Handwerksbäckerei mit Produktions- und Verkaufsdisplay - Zwei Peakboard-Apps im perfekten Gleichtakt
date: 2026-07-22 00:00:00 +0000
tags: food-and-beverage retail
image: /assets/2026-07-22-11-32-57/title.jpg
bg_alternative: true
description: "Zwei verbundene Peakboard-Apps für eine Handwerksbäckerei: ein Produktionsbildschirm mit Chargen-Timern, Ofentemperaturen und Gärraum-Status sowie eine Menütafel für den Verkaufsraum, die den Bestand aktualisiert, sobald eine Charge als fertig markiert wird."
prompt: |
  Entwirf zwei Apps für eine Handwerksbäckerei. Der Bildschirm in der Backstube zeigt den Backplan mit Chargen-Timern, Ofentemperaturen und dem Status des Gärraums. Das kundenorientierte Display im Verkaufsraum zeigt die heute verfügbaren Brote und Gebäcke mit Preisen und "Ausverkauft"-Overlays, sobald Artikel zur Neige gehen; die Hub-Liste "ProductAvailability" versorgt beide Apps, sodass der Verkaufsraum sofort den neuen Bestand anzeigt, wenn die Produktion eine Charge als fertig markiert.
downloads:
  - name: BakeryProduction.pbmx
    url: /assets/2026-07-22-11-32-57/BakeryProduction_de.pbmx
  - name: BakeryStorefront.pbmx
    url: /assets/2026-07-22-11-32-57/BakeryStorefront_de.pbmx
lang: de
permalink: /de/craft-bakery-production-and-storefront-displays/
translation_url: /en/craft-bakery-production-and-storefront-displays/
---
{% include youtube.html id="sJxLoHXded8" %}


Eine Handwerksbäckerei lebt vom richtigen Timing. Der Teig gärt nach seinem eigenen Zeitplan, die Öfen laufen je nach Produkt mit unterschiedlichen Temperaturen, und vorne im Laden wollen die Kunden vor allem eines wissen: Was ist gerade frisch und verfügbar? In diesem Artikel schauen wir uns eine Peakboard-Lösung aus zwei Apps an, die die Backstube mit dem Verkaufsraum verbindet - in dem Moment, in dem ein Bäcker eine Charge als fertig markiert, zeigt die Menütafel im Verkauf den neuen Bestand an, ohne dass jemand eingreifen muss.

## Das Szenario

Die Lösung richtet sich an eine kleine bis mittelgroße handwerkliche Bäckerei. In der Backstube jonglieren die Bäcker einen ganzen Tag voller Chargen: Sauerteigbrote, Croissants, Brezeln, saisonales Gebäck - alle mit eigenen Backzeiten und Ofeneinstellungen. Vorne im Laden aktualisiert das Personal traditionell eine Kreidetafel oder klappt Papierschilder mit "Ausverkauft" um, wenn etwas zur Neige geht - was im morgendlichen Ansturm oft zu spät oder gar nicht passiert.

Die Lösung besteht aus zwei separaten Peakboard-Apps, die sich einen einzigen Verfügbarkeits-Feed teilen: die Hub-Liste **ProductAvailability**. Die Produktion schreibt hinein, der Verkaufsraum liest daraus. Diese eine gemeinsame Liste ist die gesamte Integration: keine Middleware, keine manuellen Updates, kein Gang zur Verkaufstheke, um ein Schild zu tauschen.

## Die Produktions-App

Die Produktions-App läuft auf einem Touchscreen in der Backstube und ist ein echtes Arbeitswerkzeug, nicht nur eine Anzeige. Die Bäcker interagieren während ihrer gesamten Schicht ständig damit.

![Produktionsdashboard mit Backplan und Chargen-Timern](/assets/2026-07-22-11-32-57/de_BakeryProduction_010.png)

Die Hauptansicht zeigt den laufenden Backplan. Jede Charge im Plan bekommt einen Countdown-Timer - niemand muss sich mehr merken, ob die Roggenbrote um 6:10 oder 6:20 Uhr in den Ofen kamen. Neben dem Plan zeigt der Bildschirm die Ofentemperaturen in Echtzeit sowie den Status der Teiglinge im Gärraum. So hat das ganze Team eine gemeinsame Sicht darauf, wo jedes Produkt gerade steht.

![Chargen-Interaktion und Steuerung der Ofentemperatur](/assets/2026-07-22-11-32-57/de_BakeryProduction_020.png)

Die Bedienung ist bewusst einfach gehalten - auch mit mehligen Händen: Ein Tipp auf eine Charge startet oder pausiert ihren Timer, die Soll-Temperaturen der Öfen lassen sich über ein Bildschirm-Tastenfeld anpassen. Kommt eine Charge aus dem Ofen, genügt ein Tipp, um sie als fertig zu markieren - und genau dieser Tipp schiebt den frischen Bestand über die gemeinsame Verfügbarkeitsliste in den Verkaufsraum.

![Produktionsprotokoll mit abgeschlossenen Chargen](/assets/2026-07-22-11-32-57/de_BakeryProduction_030.png)

Der Bildschirm führt außerdem ein fortlaufendes Produktionsprotokoll. Alles, was gestartet, abgeschlossen oder angepasst wurde, landet dort mit Zeitstempel. Das Team sieht auf einen Blick, was während der Schicht passiert ist, und die Schichtübergabe hängt nicht mehr vom Gedächtnis einzelner ab.

## Die Verkaufsraum-App

Die Verkaufsraum-App ist das kundenorientierte Gegenstück - konzipiert als Menütafel über oder neben der Theke.

![Menütafel im Verkaufsraum mit Produktkacheln, Preisen und Verfügbarkeit](/assets/2026-07-22-11-32-57/de_BakeryStorefront_010.png)

Die heutigen Brote und Gebäcke werden in einem ansprechenden Kachelraster mit Beschreibungen, Preisen und Frische-Indikatoren präsentiert. Das Design übernimmt das Verkaufen: warme Farben, klare Typografie und ehrliche Verfügbarkeit. Geht ein Artikel zur Neige, erscheint auf seiner Kachel ein Badge **Nur noch wenige da!** - ein sanfter Anstoß für unentschlossene Kunden. Ist er komplett ausverkauft, legt sich ein deutliches **AUSVERKAUFT**-Overlay über die Kachel. So steht niemand fünf Minuten in der Schlange, nur um zu erfahren, dass das letzte Croissant weg ist.

![Rotierender Empfehlungs-Banner und Ausverkauft-Overlays](/assets/2026-07-22-11-32-57/de_BakeryStorefront_020.png)

Ganz oben rückt ein rotierender Hero-Banner **Empfehlung des Bäckers** alle paar Sekunden ein anderes Produkt ins Rampenlicht - eine einfache, aber wirksame Möglichkeit, gezielt das Produkt zu bewerben, das die Bäckerei heute am liebsten verkaufen möchte.

## Zwei Apps, eine Wahrheit

Der Kerngedanke: Keiner der beiden Bildschirme wird separat gepflegt. Beide Apps hängen an derselben Hub-Liste **ProductAvailability**. Markiert die Produktion eine Charge Sauerteigbrot als fertig, zeigt die Sauerteig-Kachel im Verkaufsraum sofort den neuen Bestand. Verkauft die Theke das letzte Stück, erscheint das Overlay. Das Produktionsteam muss nie an die Beschilderung denken, und das Verkaufsteam muss nie in der Backstube nach dem Status fragen.

Beide Projekte werden mit realistischen Beispieldaten ausgeliefert und laufen dadurch sofort und eigenständig - ganz ohne Backend-Setup. Die gemeinsame Verfügbarkeitsliste ist bereits verdrahtet: Um sie mit echten Beständen zu verbinden, genügt es, beide Apps auf einen Peakboard Hub zeigen zu lassen - nichts muss neu gebaut werden.

## Fazit

Dieses Bäckerei-Duo zeigt, wie viel zwei aufeinander abgestimmte Bildschirme in einem kleinen Betrieb bewirken können. Das Produktionsdisplay reduziert verpasste Timer und gibt dem Backteam eine gemeinsame, per Touch bedienbare Sicht auf das Tagesgeschäft. Das Verkaufsdisplay kurbelt den Umsatz mit einem Empfehlungs-Banner an, weckt mit Restbestands-Badges und Ausverkauft-Overlays ehrliche Erwartungen und unterstreicht die Handwerksmarke mit professioneller Beschilderung. Und weil beide auf einer gemeinsamen Verfügbarkeitsliste laufen, bleibt das gesamte System von selbst synchron - die Bäcker backen, die Tafel aktualisiert sich, und die Kunden sehen immer den wahren Stand. Beide Projekte stehen in der Seitenleiste zum Download bereit.