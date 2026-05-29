<%-*
// The configuration object.
let config = {
    title: {
	    prompt: true,
	    display: "What is the title?",
	    value: "",
    }
	path: {
		prompt: false,
		value: "Reflection"
    },
    filename: {
	    prompt: true,
	    display: "{{ title }} - Reflection",
	    value: ""
    },
}
    
await tp.user.makeNoteWithPrompting(tp, config)

_%>
---
type: reflection
date: <% tp.date.now("yyyy-MM-DD") %>
parent: 
---

## Tasks

- [ ] link to parent
- [ ] summary:: 