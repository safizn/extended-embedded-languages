# Feature Additions
- fork of https://marketplace.visualstudio.com/items?itemName=ruschaaf.extended-embedded-languages 

## Indentation-tolerant block closing (v1.3.1)

Embedded code blocks can now be closed with an **indented** closing delimiter.
Previously, adding spaces or tabs before the closing delimiter (e.g. `"#`,
`'''`, a backtick) broke highlighting for the rest of the file.

```rust
let out = format!(/*bash*/ r#"
ory delete identity {0} -y
    "#, identity_id);   // ← indented close now works
```

Supported host languages:

- Rust
- C++
- Go
- Python
- JavaScript / TypeScript (and JSX / TSX)
- TOML
- Nix

Note: PowerShell is unchanged — here-string terminators must stay at column 0
by PowerShell's own syntax. YAML already handled indentation natively.

All host languages were verified against the real VS Code grammars (spaces,
tabs, non-indented closes, and multi-block files).
