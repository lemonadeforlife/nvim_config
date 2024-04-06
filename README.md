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
If you don't wth is going on, then here is the explanation. Basically downloading through `curl` in your `Download` directory. Then we are passing `-xzf` for extracting that tar file  in `/opt` directory for accessing the Neovim globally by passing `-C` arguement.
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

- **Has blazingly fast fuzzy finder whether it's code or file ⚡️**
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
