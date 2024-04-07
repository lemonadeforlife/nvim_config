<h1 align="center">
<a href="https://github.com/neovim/neovim" target="_blank">
<img src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png" alt="Neovim">
</a>
<br>
<a href="https://neovim.io/doc/user/" target="_blank">Read the Doc! 🔫</a>
</h1>

### Table of Content
- [Installation](#installation)
	- [NeoVim](#neovim)
	- [Configuration](#configuration)
- [Feature](#feature)
- [Plugins](#plugins)
- [Resources](#resources)
- [Uninstall](#uninstall)

## Installation
#### Neovim
```shell
curl --output-dir "~/Downloads" -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -C ~/opt -xzf ~/Downloads/nvim-linux64.tar.gz
export CUSTOM_NVIM_PATH=/opt/nvim-linux64/bin/nvim
sudo update-alternatives --install /usr/bin/ex ex "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vi vi "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/view view "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vim vim "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vimdiff vimdiff "${CUSTOM_NVIM_PATH}" 110
```
If you're lost in this commands, then here is the explanation. Basically downloading through `curl` in your `Download` directory. Then we are passing `-xzf` for extracting that tar file  in `/opt` directory for accessing the Neovim globally by passing `-C` arguement.
Finally since we don't want to screw our muscle memory & using improved version of vim. We are using Neovim as vim alternative by using `update-alternatives` command.
#### Configuration
```shell
git clone https://github.com/lemonadeforlife/nvim_config ~/.config/nvim && vi
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
  <tr>
    <td>Comments</td>
  </tr>
</table>
These are the core plugin that are essential and bring functionality and reason for using neovim as well. There are several plugins I have installed but I don't use on daily basis and planning to change it in future.

## Resources
- ![Basic Vim Motion by NycRat](https://youtu.be/hsFnJgmLOLk)
- ![Advance Vim Motion by ThePrimeagen](https://www.youtube.com/playlist?list=PLm323Lc7iSW_wuxqmKx_xxNtJC_hJbQ7R) <br>
  OG Developer & neovim user who writes code blazingly fast

- ![TJ DeVries YouTube Channel](https://www.youtube.com/@teej_dv) <br>
  Author of telescope plugin & one of the core developer of neovim. Uploads fantastics video about neovim

## Uninstall
```shell
# Uninstall Neovim
sudo update-alternatives --remove ex /opt/nvim-linux64/bin/nvim
sudo update-alternatives --remove vi /opt/nvim-linux64/bin/nvim
sudo update-alternatives --remove view /opt/nvim-linux64/bin/nvim
sudo update-alternatives --remove vim /opt/nvim-linux64/bin/nvim
sudo update-alternatives --remove vimdiff /opt/nvim-linux64/bin/nvim
sudo rm -rf /opt/nvim-linux64

# Uninstall configuration
sudo rm -rf ~/.config/nvim
```
