---
type: sprint
start: <% tp.date.weekday("YYYY-MM-DD", 0)%>
end: <% tp.date.weekday("YYYY-MM-DD", 6) %>
date-created: <% moment(tp.date.now()).toISOString() %>
date: <% tp.date.now("YYYY-MM-DD") %>
---
<% await tp.file.move("/Weekly Notes/" + tp.file.title) %>
<< [[<% tp.date.weekday("[Week of] MMM DD, YYYY",  -7) %>]]  | [[<% tp.date.weekday("[Week of] MMM DD, YYYY",  7) %>]] >>

![[<% tp.date.weekday("[Sprint Review - Week of] YYYY-MM-DD",  -7) %>#❗️ Things to Avoid ❗️]]

![[<% tp.date.weekday("[Sprint Review - Week of] YYYY-MM-DD",  -7) %>#Task Ideas]]

## Reflections

What were your wins this week?
- 

What did not go so well, and why?


What do you need accountability for next week?
- 

What are you grateful for?

### Tasks from weekly notes
```dataview
TASK
FROM -"Templates"
WHERE (type = "day" or type="meeting") and file.day >= date(<% tp.date.weekday("YYYY-MM-DD", 0) %>) and file.day <= date(<% tp.date.weekday("YYYY-MM-DD", 6) %>)
```

## Notes
```dataview
LIST
FROM -"Templates"
WHERE file.day >= date(<% tp.date.weekday("YYYY-MM-DD", 0) %>) AND file.day <= date(<% tp.date.weekday("YYYY-MM-DD", 6) %>)
```

## Active Experiments
```dataview
TABLE trial
WHERE type = "experiment" AND active = true
```
