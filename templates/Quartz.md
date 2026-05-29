<%-*
// The configuration object.
let config = {
	path: {
		prompt: false,
		value: "Quartz/content"
    },
    filename: {
	    prompt: true,
	    display: "What should the filename be?",
	    value: ""
    },
	date: {
		 prompt: true,
		 display: "Date",
		 value:  tp.date.now("yyyy-MM-DD")
	}
}

await tp.user.makeNoteWithPrompting(tp, config)
_%>
---
title: <% config.filename.value %>
date: <% config.date.value %>
description: 
permalink: 
aliases:
  - Other names for this note. This is a list of strings.
tags: 
draft: false
---

Serve site with `npx quartz build --serve`

## Format Hints

Read more about [Authoring Content with Quartz](https://quartz.jzhao.xyz/authoring-content)

`~~Strikethrough~~` = ~~Strikethrough~~

### Internal Link
```markdown
[Internal Link](#format-hints).
```
[Internal Link](#format-hints)
### Callouts
```markdown
> [!info] Title
>
> This is a callout!
```

> [!info] Title
> 
> This is a "info" callout! Other callouts include note, abstract, todo, tip, success, question, warning, failure, danger, bug, example, quote. 

### Wikilinks

- `[[Path to file]]`: produces a link to `Path to file.md` (or `Path-to-file.md`) with the text `Path to file`
- `[[Path to file | Here's the title override]]`: produces a link to `Path to file.md` with the text `Here's the title override`
- `[[Path to file#anchor|Anchor]]`: produces a link to the anchor `Anchor` in the file `Path to file.md`
- `[[Path to file#^block-ref|^block-ref]]`: produces a link to the specific block `block-ref` in the file `Path to file.md`

### Embeds

- `![[Path to image]]`: embeds an image into the page
- `![[Path to image|100x145]]`: embeds an image into the page with dimensions 100px by 145px
- `![[Path to file]]`: transclude an entire page
- `![[Path to file#anchor|Anchor]]`: transclude everything under the header `Anchor`
- `![[Path to file#^b15695|^b15695]]`: transclude block with ID `^b15695