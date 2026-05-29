<%-*
// The configuration object.
let config = {
	path: {
		prompt: false,
		value: "Logfiles"
    },
    task: {
	    prompt: true,
	    display: "Task",
	    value: ""
    },
    date: {
	    prompt: false,
	     value:  tp.date.now("yyyy-MM-DD"),
    },
    filename: {
        prompt: false,
        value: "{{ date }} - {{ task }}"
    },
}
await tp.user.makeNoteWithPrompting(tp, config)

_%>
---
type: logfile
date: <% tp.date.now("yyyy-MM-DD") %>
---

## Step Into Focus

- [ ] Step 0: Change physical location if needed
- [ ] Step 1: Start with sensory support - small dopamine rewards for all five senses (coffee, music/ambience, etc.)
- [ ] Step 2: Remove and replace
	- [ ] remove distractions from desk
	- [ ] hide phone from view
	- [ ] noise canceling headphones
- [ ] Step 2.5: Name/label the task
- [ ] Step 3: Outline and break it down
- [ ] Step 4: Tinker - open the app/book, write down the date/title
	- [ ] minimize windows and close distracting apps you don't need
	- [ ] fullscreen/organize windows you do need
	- [ ] set timer for estimated time to finish first step of task
- [ ] Step 5: You are here! Start timer and task

## Task: <% config.task.value %>

The next thing I want to accomplish is...
The next subtask I can take to finish that task is...
I estimate that subtask will take...
`___`
That attempt at doing the subtask went... 
## Step Out of Focus 

- [ ] stop your timer