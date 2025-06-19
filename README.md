# australia-holidays.el

A list of public holidays in Australia, as well as for each specific Australian state or territory. To use this instead of the US-centric holiday list:

```
  (setq calendar-holidays holiday-australia-holidays)
```

Or append the Australian holidays to existing list:

```
  (setq calendar-holidays (append calendar-holidays holiday-australia-holidays))
```

Alternatively, you can use a state-specific list. For instance, if you live in New South Wales and want to use just those holidays:

```
  (setq calendar-holidays holiday-australia-nsw-holidays)
```

If you don't feel like January 26 should be called Australia day, you can change it:

```
  (setq holiday-australia-january-26-label "Invasion Day")
```
