# My Personal Dotfiles

This repository contains my personal dotfiles, which are managed using [chezmoi](https://www.chezmoi.io/). These dotfiles are configurations for various tools and programs that I use in my daily workflow, helping me to keep my development environment consistent across machines.

## Managed by chezmoi

[chezmoi](https://www.chezmoi.io/) is a tool that helps me manage my dotfiles across multiple machines securely and easily. It allows me to maintain a single source of truth for my dotfiles, with the ability to apply changes across different systems seamlessly.

### How to Use

1. Install `chezmoi` following the [official installation guide](https://www.chezmoi.io/install/).
2. Clone this repository:
   ```bash
   git clone <repository-url> ~/.dotfiles
   cd ~/.dotfiles
   ```
3. Apply the dotfiles to your system using `chezmoi`:
   ```bash
   chezmoi apply
   ```
