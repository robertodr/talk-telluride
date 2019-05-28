name: inverse
layout: true
class: center, middle, inverse
---
## Coupled Cluster diagrams using Monte Carlo

.author[Roberto Di Remigio]

.institution[UiT - The Arctic University of Norway]

.institution[Department of Chemistry - Virginia Tech]

.date[13 June 2019, Telluride]

.footnote[[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) licensed.
Browse slides at [http://tinyurl.com/talk-telluride](http://tinyurl.com/talk-telluride)]

???

---
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame00.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame01.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame02.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame03.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame04.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame05.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame06.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame07.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame08.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame09.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame10.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
count: false
layout: false

## Extensible

<p style="text-align:left;"><img src="images/diagccmc/frame11.png" style="width: 110%;"/></p>
<p style="clear: both;">

???

---
layout: false

## Modular
### Do One Thing, Do It Well
<p style="text-align:center;"><img src="images/lego-once.gif" style="width: 100%"></p>
<p style="clear: both;">

???

- Fast-paced development cycles can only occur within a clear software structure
- Delimit capabilities, concerns, results
- Modularity can help create such a structure
- A LEGO-like structure can enhance our capabilities to reason about complex software workflows.
- Assemble, de-assemble, re-assemble is easier with standalone modules.

---
layout: false

## Sustainable
### Software Reuse for a Better Life

<p style="text-align:center;"><img src="images/reinvent-wheel.gif" style="width: 100%;"/></p>
<p style="clear: both;">

.footnote-cite[Source: [IBM Big Data & Analytics Hub](http://www.ibmbigdatahub.com/blog/dont-reinvent-wheel-increase-productivity-strategic-reuse)]

???

- Reinventing the wheel is bad
- Build small, well-documented software components
- Reuse components in different contexts

---

## The Problem(s) with Input Parsing

- Proliferation of formats
- Difficult to ensure correctness
- Error reporting can be confusing
- Hard to compose
- Documentation quickly outdated or incomplete

<p style="text-align:center;"><img src="images/confused-dude.gif" style="width: 50%"></p>
<p style="clear: both;">

---
layout: false
class: split-50-50

## parselglossy: generic input parsing, speaking in tongues

Separate _syntax_ and _semantics_

.column[
```
parselglossy --help

Usage: parselglossy [OPTIONS] COMMAND [ARGS]...

  Console script for parselglossy.

Options:
  --version  Show the version and exit.
  --help     Show this message and exit.

Commands:
  doc       Generate documentation from validation template.
  lex       Run lexer and dump intermediate representation to JSON.
  parse     Parse input file.
  validate  Validate intermediate representation into final representation.
```
]
.column[
<p style="text-align:center;"><img src="images/parseltongue.jpg" style="width: 35%;"/></p>
<p style="clear: both;">
]

- [github.com/dev-cafe/parselglossy](https://github.com/dev-cafe/parselglossy)
- [parselglossy.readthedocs.io](https://parselglossy.readthedocs.io)
- `pip install parselglossy`

---
layout: false

```
parselglossy parse input.inp --template template.yml --outfile fr.json
```

<p style="text-align:center;"><img src="images/structure.png" style="width: 100%;"/></p>
<p style="clear: both;">

---
layout: false

## Tokenization: how _any_ correct input _looks_

<p style="text-align:center;"><img src="images/tokenization.png" style="width: 100%;"/></p>
<p style="clear: both;">

---
layout: false

## Validation: what correct input _must contain_

<p style="text-align:center;"><img src="images/template.png" style="width: 100%;"/></p>
<p style="clear: both;">

---
layout: false

<p style="text-align:center;"><img src="images/validation.png" style="width: 100%;"/></p>
<p style="clear: both;">

---
layout: false

## Bonus: autogenerate documentation

```
parselglossy doc template.yml --outfile input.rst
```

<p style="text-align:right;"><img src="images/documentation.png" style="width: 60%;"/></p>
<p style="clear: both;">

---
layout: false

## Conclusions

[github.com/dev-cafe/parselglossy](https://github.com/dev-cafe/parselglossy)

- A library for input parsing
- Separation of syntax and semantics
- Allows composable parsers
- Automatic generation of documentation

```
parselglossy --help

Usage: parselglossy [OPTIONS] COMMAND [ARGS]...

  Console script for parselglossy.

Options:
  --version  Show the version and exit.
  --help     Show this message and exit.

Commands:
  doc       Generate documentation from validation template.
  lex       Run lexer and dump intermediate representation to JSON.
  parse     Parse input file.
  validate  Validate intermediate representation into final representation.
```

---
layout: false

## Acknowledgements

<p style="text-align:center;"><img src="images/thanks.png" style="width: 100%"></p>
<p style="clear: both;">

---
layout: false

## Commercial

All examples online [github.com/dev-cafe/cmake-cookbook](https://github.com/dev-cafe/cmake-cookbook)

<p style="text-align:center;"><img src="images/cmake-cookbook-cover.png" style="width: 50%"></p>
<p style="clear: both;">

---
name: last-page
template: inverse

# Thanks for your attention!

Slideshow created using [remark] and served using [cicero]

Slides available on [GitHub](https://github.com/robertodr/talk-telluride)

Browse slides at [http://tinyurl.com/talk-telluride](http://tinyurl.com/talk-telluride)

[remark]: https://github.com/gnab/remark
[cicero]: https://github.com/bast/cicero
