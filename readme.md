# 🛠️ Projects/dotfiles

This repository contains my personal configuration files (Projects/dotfiles) for various tools and applications. All configs are version-controlled and symlinked into their appropriate locations to allow easy updates and portability.

## 📦 Included Configurations

- **Kitty** (`kitty/`)
- **Neovim** (`nvim/`)
- **VS Code** (`vscode/`)
- **Zed** (`zed/`)
- **Zsh** (`zsh/`)
- **Ideavim** (`ideavim/`)

## ✅ Tips

- Always back up existing config files before linking.
- Use `-sf` to force replace any existing configs.

## 🔗 Symlink Setup

To link these configurations to your system, run the following commands:

```bash
# Kitty
ln -sf ~/Projects/dotfiles/kitty ~/.config/kitty

# Neovim
ln -sf ~/Projects/dotfiles/nvim ~/.config/nvim

# VS Code
rm -rf ~/.config/Code/User
ln -sf ~/Projects/dotfiles/vscode ~/.config/Code/User

# Zed
ln -sf ~/Projects/dotfiles/zed ~/.config/zed

# Zsh
ln -sf ~/Projects/dotfiles/zsh/.zshrc ~/.zshrc

#Ideavim
ln -sf ~/Projects/dotfiles/ideavim/.ideavimrc ~/.ideavimrc
```
