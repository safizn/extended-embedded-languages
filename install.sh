npx --yes @vscode/vsce package --allow-missing-repository
code-insiders --install-extension ./*.vsix --force
code-insiders --install-extension ~/code/lib-tool/vscode-plugin-extended-embedded-languages/*.vsix --profile linux-rust
