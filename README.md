# nvim

My Neovim config. Updated for Neovim 0.12

## Requirements

* Neovim >= 0.12
* Rust toolchain (`cargo`, `rustc`)
* C/C++ build tools
* `tree-sitter-cli` >= 0.26.1
* `fzf` > 0.36
* `ripgrep` (`rg`)
* `curl`
* `unzip`

## Installing dependencies

### Ubuntu

Install Neovim:

```sh
sudo snap install nvim --classic
```

Install the required system packages:

```sh
sudo apt update
sudo apt install build-essential curl unzip fzf ripgrep
```

### Fedora

Install Neovim and the required system packages:

```sh
sudo dnf install neovim gcc gcc-c++ make curl unzip fzf ripgrep
```

### Rust and Tree-sitter

Install the Rust toolchain [rust-lang.org/tools/install](https://rust-lang.org/tools/install/).

Then install the Tree-sitter CLI:

```sh
cargo install tree-sitter-cli --locked
```

Verify the relevant versions:

```sh
nvim --version
cargo --version
tree-sitter --version
fzf --version
rg --version
```

## Recommended dependencies

These are not required, but improve some parts of the config:

* Nerd Font 3.x — icons used by `mini.icons`
* `fd` / `fdfind` — faster file discovery for fzf-lua
* `bat` — syntax-highlighted file previews
* `git-delta` — improved Git/diff previews
* `chafa` — image/media previews in the terminal

### Ubuntu

```sh
sudo apt install fd-find bat git-delta chafa
```

### Fedora

```sh
sudo dnf install fd-find bat git-delta chafa
```

## Structure

```text
.
├── after/
│   └── ftplugin/
│       └── lua.lua
├── plugin/
│   ├── autocommands.lua
│   ├── colors.lua
│   ├── completion.lua
│   ├── fzf.lua
│   ├── keymaps.lua
│   ├── lsp.lua
│   ├── mini.lua
│   ├── options.lua
│   ├── plugins.lua
│   └── treesitter.lua
├── .editorconfig
├── init.lua
├── nvim-pack-lock.json
├── LICENSE
└── README.md
```

Configuration under `plugin/` is loaded automatically by Neovim. Filetype-specific configuration lives under `after/ftplugin/`.

## Updating

Run:

```vim
:PackUpdate
```

to check for plugin updates.

