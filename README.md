# dotfiles

current tools to get things done

|   Name   |                  Description                  |
| :------: | :-------------------------------------------: |
|  neovim  |               Main text editor                |
|  vscode  |             Secondary text editor             |
|   asdf   | Manage ruby, node, elixir and erlang versions |
| Homebrew |            Package manager for OSX            |

checkout `Brewfile` for complete app list

## Setup

1. Install Command Line Tools for Xcode

   ```shell
   $ xcode-select --install
   ```

1. Configure SSH

   - [Generating a new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
   - [Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

1. Execute

   ```shell
   $ cd
   $ git clone git@github.com:darwintantuco/dotfiles.git
   ```

1. Install [homebrew](https://brew.sh/)
1. Execute

   ```shell
   $ cd
   $ cd dotfiles
   $ caffeinate -i brew bundle; make setup
   ```

   Note: This will take a while and will prompt for password

## Post Setup

1. Update `.bashrc` with your name and email

   ```shell
   git config --global user.name "Your Name"
   git config --global user.email "Your Email"
   ```

1. By default, signed commits are enabled. Update it in `.bashrc`.
   - You may want to disable it by removing `git config --global commit.gpgsign true`
   - or update signingkey with your own key `git config --global user.signingkey your-signingkey`
