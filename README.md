# osdlc Homebrew tap

Homebrew formulae for osdlc command-line tools.

## Install

```sh
brew tap osdlc/tap
brew trust osdlc/tap
brew install skillwright
```

Homebrew 7 loads formulae from a third-party tap only after you trust it. After the first time, `brew install osdlc/tap/skillwright` (or `osdlc/tap/sitroom`) works on its own.

`skillwright` installs a prebuilt binary. It was called `tradecraft` before; `brew upgrade` moves existing `tradecraft` installs to it. After the move the command is `skillwright`; there is no `tradecraft` command. If you have both installed and the upgrade fails, run `brew uninstall tradecraft`, then `brew upgrade`.

## Formulae

| Formula | What it is | Source |
|---|---|---|
| `skillwright` | Publishes a vault of markdown skill notes to coding-agent tools (Claude Code, Codex, Cursor and Pi). | [osdlc/osdlc](https://github.com/osdlc/osdlc/tree/main/packages/rust/skillwright) |
| `sitroom` | A developer dashboard with a terminal UI and a web UI; installs `sitroom` and its short name `sit`. Prebuilt binaries. | [osdlc/sitroom](https://github.com/osdlc/sitroom) |

## Licence

Each formula installs software under its own licence. The formula files here are MIT or Apache-2.0, at your option.
