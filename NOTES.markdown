OCCURRENCES
===========

Occurrences need a start time and an end time. Options when creating
an occurrence:

  - MOMENT ("I just biked"):
    Start time and end time are both the current time or a user-
    configurable time.

  - DURATION ("I biked for two hours"):
    The user selects a duration, with the end time being the current
    time or a user-configurable time.

  - ONGOING ("I'm biking"):
    This creates an occurrence with a start time but no end time. The
    user can stop ongoing occurrences manually.



EVENTS
======

What is the best way to name and display events?

  - Past tense ("Went to bed")
  - Present tense ("Going to bed")
  - Command ("Go to bed")

Maybe objects and actions should be separate?

  - Sleep: start, stop
  - Work: start, stop
  - Beer: acquire, consume
  - Food: acquire, consume
  - Game: acquire, start, stop
  - Toilet: start, stop

I think this way would be too complicated.



IDEAS
=====

The page background starts out dark and gets lighter as you go
through the occurrence creation process. Levels:

  - Multiple events
  - Single event
  - Multiple occurrences
  - Single occurrence

A page listing the most recent events could be neat. It could say "39
minutes ago, I walked Dansy."

It would be nice to have sorting options on the events page.

  - By last occurrence time.
  - By occurrences count.
  - By "magic" (a combination of the two). This should be default.



PROFILES
========

I should be able to create an account and set events to public or
private. I might like to have a public record of some events.



ADDITIONAL OCCURRENCE DATA
==========================

It could be interesting to (optionally) capture more data on
occurrence creation.

  - Notes
    Freeform. Not useful for data analysis but could be interesting
    to read later.

  - Tags
    Semi-structured. Maybe useful for data analysis.

  - Contextual data
    This would require events to be categorized in some way(s).



LOCATION DATA
=============

Only request location data if the user initiates it. There should be
a button in the occurrence creation form to get location data.

Does the app remember



MISCELLANEOUS
=============

Occurrence creation needs to be reworked. It should be at the top and
it shouldn't have any displayed text fields.

Should I call occurrence creation something else? "Check in" is
lame and a bad metaphor. "I did this" sounds silly. "This happened"?
"Record occurrence"? "Record" by itself? "+1"? "Chalk one up"?

Should the event creation form stay at the bottom? Maybe it should be
at the top but hidden by default?

Try not showing a count if the count is zero.

Should there be a way to create an occurrence from the events index?
It's already somewhat cramped on a small screen. Maybe when you click
the count it creates an occurrence. The count could transform into a check mark on hover.

Split the submit button for creating occurrences into two buttons: one "add with location" and one "add without location". The first is a normal form submit button. The second is added via JS and initiates the location request process, then modifies and submits the form.