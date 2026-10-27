# osdlc Homebrew tap

Homebrew formulae for osdlc command-line tools.

## Install

```sh
brew tap osdlc/tap
brew trust osdlc/tap
brew install tradecraft
```

Homebrew 7 loads formulae from a third-party tap only after you trust it. After the first time, `brew install osdlc/tap/tradecraft` works on its own.

`tradecraft` builds from source for now, which needs Rust and takes a few minutes. Prebuilt binaries are coming.

## Formulae

| Formula | What it is | Source |
|---|---|---|
| `tradecraft` | Publishes a vault of markdown skill notes to coding-agent tools (Claude Code, Codex, Cursor and Pi). | [osdlc/osdlc](https://github.com/osdlc/osdlc/tree/main/packages/rust/tradecraft) |

## Licence

Each formula installs software under its own licence. The formula files here are MIT or Apache-2.0, at your option.
