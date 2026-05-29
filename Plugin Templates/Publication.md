---
title: "{{title}}"
authors:
  - "{{authors}}"
date: "{{date | format('YYYY-MM-DD')}}"
citekey: "{{citekey}}"
aliases:
  - "{{citekey}}"
tags:
  - imported
  - citation
url: "{{url}}"
type: "{{type}}"
zotero_link: "{{pdfZoteroLink}}"
publisher: "{{publisher}}"
doi: "{{doi}}"
---

## {{title}}

### Formatted Bibliography

{{bibliography}}
{% if abstractNote %}

### Abstract

abstract:: {{abstractNote}}
{% endif %}

{% for annotation in annotations %}
{% if annotation.annotatedText %}

> {{annotation.annotatedText}}
> {% endif %}
> {% if annotation.comment %}
> {{annotation.comment}}
{% endif %}
{% endfor %}