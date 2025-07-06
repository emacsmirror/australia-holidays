# australia-holidays.el

[![MELPA](https://melpa.org/packages/australia-holidays-badge.svg)](https://melpa.org/#/australia-holidays)

A list of public holidays in Australia, as well as for each specific Australian state or territory. To use this instead of the US-centric holiday list:

```
  (setq calendar-holidays australia-holidays)
```

Or append the Australian holidays to existing list:

```
  (setq calendar-holidays (append calendar-holidays australia-holidays))
```

Alternatively, you can use a state-specific list. For instance, if you live in New South Wales and want to use just those holidays:

```
  (setq calendar-holidays australia-holidays-for-nsw)
```

If you don't feel like January 26 should be called Australia day, you can change it:

```
  (setq australia-holidays-january-26-label "Invasion Day")
```
