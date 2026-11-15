# Change Log

## [v1.3.1]

* Fixed syntax highlighting breaking when the closing delimiter of an embedded block is indented (spaces or tabs before the closing `"#`, `'''`, backtick, etc.). The end patterns now also match starting at the leading indentation of the closing line, so host or embedded grammar rules that match that indentation can no longer win the earliest-match race against the end pattern and leave the string unterminated. Applies to the Rust, C++, Go, Python, TypeScript/JavaScript, TOML and Nix host languages. (PowerShell is unchanged: here-string terminators must be at column 0 by PowerShell's own syntax.)

## [v1.3.0]

* Added `Powershell` and `nix` host languages (thanks to [@DaRacci](https://github.com/DaRacci) for the contributions)



## [v1.2.0]

* Added `TypeScript` as a host language, and `Handlebars` as an embedded language (thanks to [@AVor0n](https://github.com/AVor0n) for these additions)
* Loading the most popular Jinja extension no longer disables syntax highlighting in YAML files (Issue [#1](https://github.com/ruschaaf/extended-embedded-languages/issues/1))
* Updated docs


## [v1.1.1]

Updated package description, it was too long

## [v1.1.0]
Added Rust and Go as host languages



## [v1.0.0]

Added embedded languages: Lua, Makefile, GraphQL, TypeScript, LaTeX,
TeX, and Graphviz

Added experimental generation of embedded langauge snippets - these are
not added to VSCode by default yet, but they could be manually added to
a project. If you
can use the `sql` snippet and depending on the host language you might
get
```cpp
//c++
R"sql(
)sql"
```
or 
```py
#python
"""--sql
"""
```

Clarified "snippets" vs. "examples" in the code

## [v0.0.2]

New host language: Javascript

New embedded languages: hlsl, glsl, wgsl, Metal

Refactored code and added ESLint for linting

Regexp improvements for better matching

## [v0.0.1]

- Initial release