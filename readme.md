
# Jinja2 Collection

> ### Syntax
> - {% ... %} for statements
> - {{ ... }} for expression to print the template output
> - {# ... #} for comments not included in the template output
> - # ... ## for Line statements

***You can use control characters to modify how the whitespace around a tag works. - always removes whitespace, `+` always preserves it,
overriding the env settings for that tag. The `-` character can go at the beginning or end (or both) of a tag to control the whitespace in
that direction, the `+` character only makes sense at the beginning of a tag.

> - {%- if ... %} strips before
> - {%- if ... -%} strips before and after
> - {%+ if ... %} preserves before
> - {%+ if ... -%} preserves before and strips after
> - remember that {% endif %} is treated separately

Jinja2 builtin tests: 15. List of Builtin Test - Jinja2 API (https://tedboy.github.io/jinja2/templ15.html)


