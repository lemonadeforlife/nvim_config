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
#### NeoVim
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
#### Configuration
```shell
git clone https://github.com/lemonadeforlife/nvim_config ~/.config/nvim && nvim
```
- Run `:MasonInstallAll` command after lazy.nvim finishes downloading plugins
- Run `Lazy Sync` command after Mason Install

## Feature

## Plugins

## Resources

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
