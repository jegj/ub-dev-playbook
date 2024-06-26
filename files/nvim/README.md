# Lazyvim useful info

## Installations

### neovim from source

Go to [neovim release](https://github.com/neovim/neovim/releases/tag/stable)
and follow instructions

### Install Lazygit

```sh
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

### Mason

- ansible-lint
- eslint-lsp
- prettierd
- gopls
- markdownlint
- rust-analyzer
- lua-language-server
- goimports
- json-lsp jsonls
- ansible-language-server
- js-debug-adapter
- codelldb
- gofumpt
- marksman
- shfmt
- stylua
- taplo
- typescript-language-server

## Links

- [Setup nerdfonts under windows envs](https://webinstall.dev/nerdfont/)
- [Game for practice motions](https://github.com/ThePrimeagen/vim-be-good)
- [run & debug typescript units tests in neovim](https://www.youtube.com/watch?v=7Nt8n3rjfDY)
- [craftzdog dot envs](https://github.com/craftzdog/dotfiles-public)

## Old config

- [old vim config](../deprecated/init.vim)
