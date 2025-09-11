
# Jinja2 Collection

> ### Syntax
> - {% ... %} for statements
> - {{ ... }} for expression to print the template output
> - {# ... #} for comments not included in the template output
> - \# ... ## for Line statements

***You can use control characters to modify how the whitespace around a tag works***. - always removes whitespace, `+` always preserves it,
overriding the env settings for that tag. The `-` character can go at the beginning or end (or both) of a tag to control the whitespace in
that direction, the `+` character only makes sense at the beginning of a tag.

> - {%- if ... %} strips before
> - {%- if ... -%} strips before and after
> - {%+ if ... %} preserves before
> - {%+ if ... -%} preserves before and strips after
> - remember that {% endif %} is treated separately

Jinja2 builtin tests: [15. List of Builtin Test - Jinja2 API](https://tedboy.github.io/jinja2/templ15.html "builtin Tests")

## working with Manual Escaping
If manual escaping is enabled, it's your responsibility to escape variables if needed. what to escape? 
if you have a variable that may include any of the following chars (`>`, `<`, `&`, or `"`) you **SHOULD** escape it unless the variable contains well-formed and trusted HTML. Escaping works by piping the variable through the `|e` filter.

```
    {{ user.username |e }}
```

## working with Automatic Escaping
When automatic escaping is enabled, everything is escaped by default except for values explicitly marked as `safe`. Variables and expressions can be marked `safe` either in
a. The context dictionary by the application with **markupsafe.Markup**
b. The template, with the `|safe` filter

Jinja2 filters, functions etc: [jinja2 - trim](https://jinja.palletsprojects.com/en/2.11.x/templates/#trim "trim function")

Ansible filter: [Ansible filter](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_filters.html "Ansible Filters")

Ansible Builtin Filters, [Global Functions](https://tedboy.github.io/jinja2/templ16.html "Global Functions")

***Note***
**Bash doesn't support Perl Regex, bash understands standard extended regular expression (ERE).**
Perl Regex reference page: [Perl Regex](https://www.pcre.org/original/doc/html/pcresyntax.html#TOC1 "Perl Regex")
# coding some text
