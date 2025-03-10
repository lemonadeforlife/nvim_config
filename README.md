<h1 align="center">
<a href="https://github.com/neovim/neovim" target="_blank">
<img src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png" alt="Neovim">
</a>
<br>
<a href="https://neovim.io/doc/user/" target="_blank">Read the Doc! 🔫</a>
</h1>

# Table of Content

- [Prerequisite](#prerequisite)
- [Installation](#installation)
  - [NeoVim](#neovim)
    - [Linux](#linux)
    - [Windows](#windows)
  - [Configuration](#configuration)
- [Update](#update)
- [Feature](#feature)
- [Plugins](#plugins)
- [Resources](#resources)
- [Uninstall](#uninstall)

# Prerequisite

## NerdFont

- Direct Download:
  - [JetBrainsMono](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip)
  - [DejaVuSansMono](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/DejaVuSansMono.zip)
  - [FiraMono](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraMono.zip)
  - [FiraCode](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip)

## NodeJS

It's important for mason

- For Linux: https://github.com/nvm-sh/nvm
- For Windows: https://nodejs.org/en/download/package-manager

## [fd](https://github.com/sharkdp/fd) & [ripgreap](https://github.com/BurntSushi/ripgrep)

For Linux:

```bash
sudo apt install ripgrep fd-find
```

For Windows

```pwsh
choco install fd ripgrep make
```

# Installation

## <span style="display:block;text-align: center;">Neovim</span>

## Linux

1. Download neovim release file to `Download` directory

```bash
curl --output-dir ~/Downloads -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
```

2. Extract file to `/opt` for globally access neovim

```bash
tar -C /opt -xzf ~/Downloads/nvim-linux-x86_64.tar.gz
```

3. Adding neovim to editor & replacing vim with neovim

```bash
export CUSTOM_NVIM_PATH=/opt/nvim-linux-x86_64/bin/nvim
sudo update-alternatives --install /usr/bin/editor editor /opt/nvim-linux-x86_64/bin/nvim 01
sudo update-alternatives --install /usr/bin/ex ex "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vi vi "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/view view "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vim vim "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vimdiff vimdiff "${CUSTOM_NVIM_PATH}" 110
```

> [!note]
> If you're lost in this commands, then here is the explanation. Basically downloading through `curl` in your `Download` directory. Then we are passing `-xzf` for extracting that tar file in `/opt` directory for accessing the Neovim globally by passing `-C` arguement.
> Finally since we don't want to screw our muscle memory & using improved version of vim. We are using Neovim as vim alternative by using `update-alternatives` command.
> <br>

## Windows

1. For installing neovim on Windows is actually super simple:

```pwsh
choco install neovim
```

2. Setting alias as `vi` in powershell:

```pwsh
# To check if profile.ps1 exixst or not if not create with linux touch alias
Test-Path $PROFILE

# open the profile.ps1 file with notepad
notepad $PROFILE

# now set alias
Set-Alias vi nvim

# And now restart powershell that's it
```

## <span style="display:block;text-align: center;">Configuration</span>

```bash
git clone https://github.com/lemonadeforlife/nvim_config ~/.config/nvim && vi
```

## <span style="display:block;text-align: center;">Update</span>

### Linux

For Updating and Maintaining neovim check this [repository](https://github.com/lemonadeforlife/update/)

### Windows

```pwsh
choco upgrade neovim
```

## Feature

- **Blazingly Fast⚡️** <br>
  ![image](https://github.com/lemonadeforlife/nvim_config/assets/61580921/2c043960-5a43-4b45-93b0-28864b394b78)

- **Has Vim Motion to write code blazingly fast⚡️** <br>
  ![demo_neovim_motion](https://github.com/lemonadeforlife/nvim_config/assets/61580921/30a5bd2b-061a-415e-b37d-17b49927bdba)

- **Has better customization** <br>
  <img src="https://github.com/lemonadeforlife/nvim_config/assets/61580921/af16bf20-fc5c-4e40-96fe-ada131fb2262" width="790">

- **Has blazingly fast ⚡️ fuzzy finder whether it's code, file or docs** <br>
  ![fuzzy_out](https://github.com/lemonadeforlife/nvim_config/assets/61580921/9d1486d8-b90e-4976-b647-fb360d62eb81)

- **Has LSP Supports and of course it's blazingly fast ⚡️** <br>
  ![LSP](https://github.com/lemonadeforlife/nvim_config/assets/61580921/7c5ce12a-9de1-4ea2-851e-fe9d46d579c3)

## Plugins

<table>
  <th>Name</th>
  <th>Usage</th>
  <tr>
    <td><a href="https://github.com/folke/lazy.nvim">Lazy</a></td>
    <td>Plugin Manager</td>
  </tr>
  <tr>
    <td><a href="https://github.com/nvim-tree/nvim-tree.lua">nvim-tree</a></td>
    <td>A file explorer tree for neovim written in lua </td>
  </tr>
  <tr>
    <td><a href="https://github.com/nvim-telescope/telescope.nvim">telescope</a></td>
    <td>Fuzzy finder</td>
  </tr>
  <tr>
    <td>
      <ul>
        <li><a href="https://github.com/hrsh7th/nvim-cmp">nvim-cmp</a></li>
        <li><a href="https://github.com/L3MON4D3/LuaSnip">LuaSnip</a></li>
        <li><a href="https://github.com/saadparwaiz1/cmp_luasnip">cmp_luasnip</a></li>
        <li><a href="https://github.com/onsails/lspkind.nvim">lspkind.nvim</a></li>
      </ul>
    </td>
    <td>A completion plugins for neovim in Lua</td>
  </tr>
  <tr>
    <td>
      <ul>
        <li><a href="https://github.com/williamboman/mason.nvim">mason.nvim</a></li>
        <li><a href="https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim">mason-tool-installer.nvim</a></li>
        <li><a href="https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim">mason-tool-installer.nvim</a></li>
        <li><a href="https://github.com/williamboman/mason-lspconfig.nvim">mason-lspconfig.nvim</a></li>
        <li><a href="https://github.com/nvimtools/none-ls.nvim">none-ls</a></li>
        <li><a href="https://github.com/neovim/nvim-lspconfig">lspconfig</a></li>
      </ul>
    </td>
    <td>
	    A LSP plugins for neovim in lua. <code>Mason</code> install, manage & maintain the necessary lsp packages. <code>lspconfig</code> helps to configure lsp. Finally <code>none-ls</code>, It helps to configure the formatting & linting
    </td>
  </tr>
  <tr>
  <td>
   	<ul>
	    <li><a href="https://github.com/lewis6991/gitsigns.nvim">gitsigns.nvim</a></li>
	    <li><a href="https://github.com/tpope/vim-fugitive">vim-fugitive</a></li>
	  </ul>
  </td>
  <td>Git plugins</td>
  </tr>
</table>
These are the core plugin that are essential and bring functionality and reason for using neovim as well. There are more but currently I'm out breath writing this sh*t...

## Resources

- ![Basic Vim Motion by NycRat](https://youtu.be/hsFnJgmLOLk)
- ![Advance Vim Motion by ThePrimeagen](https://www.youtube.com/playlist?list=PLm323Lc7iSW_wuxqmKx_xxNtJC_hJbQ7R) <br>
  OG Developer & neovim user who writes code blazingly fast

- ![TJ DeVries YouTube Channel](https://www.youtube.com/@teej_dv) <br>
  Author of telescope plugin & one of the core developer of neovim. Uploads fantastics video about neovim

## Uninstall

### Linux

```bash
# Uninstall Neovim
export CUSTOM_NVIM_PATH=/opt/nvim-linux-x86_64/bin/nvim
sudo update-alternatives --remove editor "${CUSTOM_NVIM_PATH}"
sudo update-alternatives --remove ex "${CUSTOM_NVIM_PATH}"
sudo update-alternatives --remove vi "${CUSTOM_NVIM_PATH}"
sudo update-alternatives --remove view "${CUSTOM_NVIM_PATH}"
sudo update-alternatives --remove vim "${CUSTOM_NVIM_PATH}"
sudo update-alternatives --remove vimdiff "${CUSTOM_NVIM_PATH}"
sudo rm -rf /opt/nvim-linux-x86_64

# Uninstall configuration
sudo rm -rf ~/.config/nvim
```

### Windows

```pwsh
choco uninstall neovim
```
