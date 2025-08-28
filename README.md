# Fedora toolbx with vscode

Simple [Toolbx](https://containertoolbx.org) image for easy use of [Visual Studio Code](https://code.visualstudio.com/).

## Quickstart

```bashsh
toolbox create --image ghcr.io/geofflambeth/fedora-vscodebox:fedora-42
toolbox enter fedora-vscodebox-fedora-42
```

## Alias

If you want to use zsh by default with this toolbox, but don't want to install zsh and set it as default on your host machine, consider adding an alias with the `SHELL` env var.

```bash
# consider adding to .bashrc on the host
alias vscodebox='SHELL=zsh toolbox enter fedora-vscodebox-fedora-42'
```

## Included in the container

The images here are generally intended for my personal use in a Visual Studio Code&ndash;based workflow. The stack here may change, but I will clearly document breaking changes. 

- [Visual Studio Code](https://code.visualstudio.com/)
- [zsh](https://www.zsh.org/)
- [neovim](https://neovim.io/)
