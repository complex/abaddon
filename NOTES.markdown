OCCURRENCES
-----------

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

These options will be hidden by default.



MISCELLANEOUS
-------------

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
  
I should be able to create an account and set events to public or
private. I might like to have a public record of some events.

It could be interesting to (optionally) capture more data on
occurrence creation.

  - Notes
    Freeform. Not useful for data analysis but could be interesting
    to read later.

  - Tags
    Semi-structured. Maybe useful for data analysis.

  - Contextual data
    This would require events to be categorized in some way(s).

The occurrence + location button should be inserted via JS.

The navigation needs to be turned into a partial.

The styles for the main column need to be reworked so I don't have to
use negative margins on other elements.

The scroll down button is just scrolling to the bottom always. It should go to the event creation form.

