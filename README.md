## Download & Install:

```
curl --create-dirs --output-dir ~/.local/bin -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x ~/.local/bin/nvim.appimage
CUSTOM_NVIM_PATH=~/.local/bin/nvim.appimage
sudo update-alternatives --install /usr/bin/ex ex "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vi vi "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/view view "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vim vim "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vimdiff vimdiff "${CUSTOM_NVIM_PATH}" 110
```

## Useful Links
[Motions](https://neovim.io/doc/user/motion.html#motion.txt)

[Delete & replace aka change](https://neovim.io/doc/user/change.html#change.txt)

[Visual Mode](https://neovim.io/doc/user/visual.html#visual-mode)

[Lua guie for neovim with api basics](https://neovim.io/doc/user/lua-guide.html#lua-guide)

Finally the [User Doc](https://neovim.io/doc/user/)

## Uninstall
```
CUSTOM_NVIM_PATH=~/.local/bin/nvim.appimage
sudo update-alternatives --remove /usr/bin/ex ex "${CUSTOM_NVIM_PATH}"
sudo update-alternatives --remove /usr/bin/vi vi "${CUSTOM_NVIM_PATH}"
sudo update-alternatives --remove /usr/bin/view view "${CUSTOM_NVIM_PATH}"
sudo update-alternatives --remove /usr/bin/vim vim "${CUSTOM_NVIM_PATH}"
sudo update-alternatives --remove /usr/bin/vimdiff vimdiff "${CUSTOM_NVIM_PATH}"
rm ~/.local/bin/nvim.appimage
```
