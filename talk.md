name: inverse
layout: true
class: center, middle, inverse
---
## Diagrammatic Coupled Cluster Monte Carlo

.author[Roberto Di Remigio]

.institution[UiT - The Arctic University of Norway]

.institution[Department of Chemistry - Virginia Tech]

.date[13 June 2019, Telluride]

.footnote[[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) licensed.
Browse slides at [http://tinyurl.com/talk-telluride](http://tinyurl.com/talk-telluride)]

???

---
layout: false

OUTLINE?

???

---
layout: false

## Coupled cluster theory

<p style="text-align:center;"><img src="images/excitations.svg" style="width: 60%"></p>
<p style="clear: both;">
`
$$
|\mathrm{CC}\rangle = \mathrm{e}^T |D_{\mathbf{0}}\rangle,
\quad
T = \sum_{u=1} T_u 
$$
`

`
$$
T_u = 
  \sum_{\substack{a_1\\ i_1}} t_{a_1}^{i_1}\tau_{i_1}^{a_1} + 
  \frac{1}{4} \sum_{\substack{a_1, a_2 \\ i_1, i_2}} t_{a_1a_2}^{i_1i_2}\tau_{i_1i_2}^{a_1a_2} + 
  \ldots + 
  \frac{1}{(u!)^2} \sum_{\substack{a_1, a_2, \ldots, a_u \\ i_1, i_2, \ldots, i_u}}
t_{a_1a_2\ldots a_u}^{i_1i_2\ldots i_u}
\tau_{i_1i_2\ldots i_u}^{a_1a_2\ldots a_u},
$$
`

???

- Construct the many-electron wavefunction as a multideterminantal expansion.
- Generate excited determinants from a single reference determinant.
- Excitations 
- Wave operator is **not** unitary: `$\mathrm{e}^{-T} \neq \mathrm{e}^{T^\dagger}$`

---
layout: false

INSERT FIGURE OF MODEL CHEMISTRIES

- Size-consistent and size-extensive
- Systematically improvable
- Polynomial scaling

???

---
layout: false

## Coupled cluster equations: _unlinked_

`
$$
H_{\mathrm{N}}|\mathrm{CC} \rangle = \Delta E_{\mathrm{CC}}| \mathrm{CC} \rangle
$$
`

Assume _intermediate normalization_ `$ \langle D_{\mathbf{0}}| \mathrm{CC} \rangle = 1$`:

- Energy equation:

`
$$
\langle D_{\mathbf{0}} | H_{\mathrm{N}} |\mathrm{CC} \rangle = 
\langle D_{\mathbf{0}} | H_{\mathrm{N}} (T_2 + T_1 + \frac{1}{2}T_1^{2})|D_\mathbf{0} \rangle =
\Delta E_{\mathrm{CC}}
$$
`

- Amplitude equations

`
$$
\langle D_{\mathbf{n}} | H_{\mathrm{N}} |\mathrm{CC} \rangle = \Delta E_{\mathrm{CC}}\langle D_{\mathbf{n}}| D_{\mathbf{0}} \rangle
$$
`

- Size-extensive order-by-order, _not_ term-by-term

???

- Start from the normal-ordered Hamiltonian
- Project on reference determinant -> Get the energy (only singles and doubles needed)
- Project on excitation manifold -> Get amplitudes

---
layout: false

## Coupled cluster equations: _linked_

`
$$
H_{\mathrm{N}}|\mathrm{CC} \rangle = \Delta E_{\mathrm{CC}}| \mathrm{CC} \rangle
$$
`

Assume _intermediate normalization_ `$ \langle D_{\mathbf{0}}| \mathrm{CC} \rangle = 1$`:

- Multiply by `$\mathrm{e}^{-T}$`:

`
$$
 \bar{H}_{\mathrm{N}} |D_\mathbf{0} \rangle =
\mathrm{e}^{-T} H_{\mathrm{N}} \mathrm{e}^{T} |D_\mathbf{0} \rangle = \Delta E_{\mathrm{CC}}| D_{\mathbf{0}} \rangle
$$
`

- Energy equation:

`
$$
\langle D_{\mathbf{0}} | \bar{H}_{\mathrm{N}} |\mathrm{CC} \rangle = \Delta E_{\mathrm{CC}}
$$
`

- Amplitude equations

`
$$
\langle D_{\mathbf{n}} | \bar{H}_{\mathrm{N}} | D_\mathbf{0} \rangle = 0
$$
`

- Size-extensive order-by-order _and_ term-by-term

???

- Start from the normal-ordered Hamiltonian
- Project on reference determinant -> Get the energy (only singles and doubles needed)
- Project on excitation manifold -> Get amplitudes

---
layout: false

## From `$\bar{H}_\mathrm{N}$` to diagrams

- Baker-Campbell-Hausdorff expansion truncates
- Only connected terms contribute (normal ordering!)
- Terms can be represented by diagrams 

???

- BCH truncates because the Hamiltonian is a two-body operator

---
layout: false

## Solving the coupled cluster equations

SHOW ALGORITHM.
HERE I WANT TO POINT OUT THE USE OF THE RESIDUAL AND PRECONDITIONING

???

---
layout: false

## From deterministic to stochastic

HERE I WANT TO SHOW HOW WE CAN DO CCMC USING UNLINKED
THAT LINKED IS HARD

---
layout: false

## Size extensivity and memory cost

HERE I WANT TO SHOW THE MEMORY COST GRAPH
AND COMMENT ON HOW THIS IS DUE TO THE SIZE EXTENSIVITY NOT BEING STRICTLY ENFORCED

---
layout: false

## Learning new tricks from an old dog

EVALUATE RESIDUAL STOCHASTICALLY USING DIAGRAMS 

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
