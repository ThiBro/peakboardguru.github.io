---
layout: post
title: Station 7 Readiness Board - Can We Roll Right Now, And With Whom?
date: 2026-07-15 00:00:00 +0000
tags: emergency-services
image: /assets/2026-07-15-11-40-47/title.jpg
bg_alternative: true
description: "A touch board for the apparatus bay of a volunteer fire department: crew availability with certifications, apparatus readiness, active calls, and wildfire risk - readable in three seconds."
prompt: |
  Create a station-readiness dashboard for a volunteer fire department to display in the apparatus bay. Show available crew members with their certifications, vehicle readiness status (fueled, equipment checked, water-filled), current active calls in the district, and weather conditions including wind speed for wildfire risk. Add a training schedule widget for the upcoming week.
downloads:
  - name: Peakboard.pbmx
    url: /assets/2026-07-15-11-40-47/Peakboard.pbmx
lang: en
permalink: /en/station-7-readiness-board/
translation_url: /de/station-7-readiness-board/
---
{% include youtube.html id="qdJy5ZzRYo0" %}


Volunteer fire departments live and die by a single question that has to be answerable in three seconds flat: can we roll right now, and with whom? Unlike a career station with a fixed shift sitting on site, a volunteer company's readiness is a moving target. Members drift in and out of availability, apparatus checks get half-finished between calls, and the risk picture outside the bay door can flip from routine to red flag over the course of an afternoon of dry wind.

This dashboard is built for exactly that gap. It is a large-format touch board mounted in the apparatus bay, next to the turnout gear racks and within a few steps of the engine's driver door. It is the first thing a responder sees when they walk in, and the last thing they glance at before mounting up.

## Four questions, one screen

![Station 7 readiness board main screen](/assets/2026-07-15-11-40-47/010.png)

**Who is available?** A live roster shows every member of the company with their rank, their certification stack (**FF II**, **Paramedic**, **Hazmat Technician**, **Wildland S-130**, **Rope Rescue**, **Driver/Operator**), and their current duty status. A headline count tells the officer how many bodies are actually callable right now. The certifications matter just as much as the count: a crew of four with no paramedic and no driver/operator is not the same crew as four with both.

**Which rigs are ready?** Each apparatus - **Engine 71**, **Brush 74**, **Tanker 79** - gets a card with its type and tank capacity, the current fuel percentage, and three independent readiness flags: fuel, equipment inventory, and water tank. A readiness bar plus a bold **READY** or **CHECK NEEDED** verdict makes an incomplete rig impossible to miss from across the bay.

**What is going on in the district?** The active call list mirrors dispatch: call type, address, priority band, time received, and current status (**Dispatched**, **Enroute**, **On Scene**). Cleared calls disappear automatically, so the list only ever shows what is still running. A colored priority stripe on the left edge of each call card gives the urgency read at a glance.

**Are we in wildfire conditions?** Temperature, wind speed, and relative humidity are shown as three large numbers, and a full-width banner underneath turns those numbers into an operational verdict: **LOW FIRE RISK**, **ELEVATED FIRE RISK**, or **RED FLAG WARNING**. Wind gets its own headline because it is the number that turns a two-acre grass fire into a mutual-aid incident.

## The training strip and the drill schedule

Underneath everything sits the training strip: the next drill, when it is, and where. A second screen expands that into the full seven-day drill and training schedule, with instructors, locations, mandatory versus optional tagging, and a running sign-up count.

![Weekly training and drill schedule](/assets/2026-07-15-11-40-47/020.png)

Signing up for a drill is a single tap on that screen. No sheet on the noticeboard, no group chat thread, no "I thought you were coming".

## A board you can service on the way past

The board is not read-only, and that is the part that keeps it honest. A member arriving at the station taps their own name and sets their duty status from a dropdown. A crew member who has just walked the rig taps the apparatus card and toggles fuel, equipment, and water individually, types their initials, and saves - which writes a timestamped line into the readiness check log that any officer can pull up from the **Check Log** button.

And when the station itself goes out of service - crew committed elsewhere, bay blocked, apparatus down - a single toggle in the header flips the whole board's banner from a green **IN SERVICE** to a red **OUT OF SERVICE** that is visible from the far wall.

## The German variant

The same board works just as well for a *Freiwillige Feuerwehr*, so we built it in German too. Same layout, same three-second read, localized labels and certification names.

![Station readiness board, German variant](/assets/2026-07-15-11-40-47/de_010.png)

![Training and drill schedule, German variant](/assets/2026-07-15-11-40-47/de_020.png)

## Result

The result is a board that a volunteer can service in fifteen seconds on the way past, and that an incident officer can read in three. Availability, apparatus, calls, and fire weather stop being four separate conversations and become one glance at the wall next to the gear racks.