<%-*
// The configuration object.
let config = {
    journal: {
		prompt: true,
		display: "Which journal?",
		value: ["Write It Down", "Black", "Stay Focused", "ReMarkable"],
    },
    title: {
	    prompt: true,
	    display: "What is the title?",
	    value: "",
    },
	path: {
		prompt: false,
		value: "Reflection/{{ journal }}",
    },
    date: {
	    prompt: true,
	    display: "YYYY-MM-DD",
	    value: "",
    },
    filename: {
	    prompt: false,
	    value: "{{ title }} - {{ date }}",
    },
    pages: {
	    prompt: true,
		display: "Page range",
		value: "",
    },
	format: {
		prompt: true,
		display: "Format",
		value: ["image", "text", "markdown"]
	},
}
    
await tp.user.makeNoteWithPrompting(tp, config)
_%>
---
type: journal-entry
journal: <% config.journal.value %>
pages: <% config.pages.value %> 
title: <% config.title.value %>
date: <% config.date.value %>
tags: <% config.format.value %>
---

## Tasks
- [ ] upload PDF/gif
- [ ] add tags, and links to topics, projects, and people
- [ ] add any `ideas::` or other full-text metadata