<%-*
// The configuration object.
let config = {
    journal: {
		prompt: true,
		display: "Which journal?",
		value: ["Year of Expression", "Doctoral Journey", "Meta"]
    },
    title: {
	    prompt: true,
	    display: "What is the title?",
	    value: "",
    },
	path: {
		prompt: false,
		value: "Journals/{{ journal }}",
    },
	date: {
		 prompt: true,
		 display: "Date",
		 value:  tp.date.now("yyyy-MM-DD")
	},
    filename: {
	    prompt: false,
	    value: "{{ date }} - {{ title }}",
    },
    
}
    
await tp.user.makeNoteWithPrompting(tp, config)
_%>
---
type: journal-entry
journal: <% config.journal.value %>
title: <% config.title.value %>
date: <% config.date.value %>
topic: 
---

summary:: blank
## Tasks

- [ ] Write a summary
- [ ] Add headers
- [ ] Update note title with something meaningful
- [ ] Add tags, related projects, related topics, etc. 
- If series
	- [ ] Add `next:: [[ ]] >>`
	- [ ] Add `<< previous: [[ ]]`
	- [ ] If this or last note was HEAD, add it to [[<% tp.date.now("yyyy") %>]]