# dotfiles

current tools to get things done

## Setup

1. Install Command Line Tools for Xcode
   ```
   $ xcode-select --install
   ```
1. Configure SSH
   - [Generating a new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
   - [Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
1. ```
   $ cd
   $ git clone git@github.com:dcrtantuco/dotfiles.git
   ```

1. Install [homebrew](https://brew.sh/)
1. ```
   $ brew bundle
   ```

1. Install [asdf](https://github.com/asdf-vm/asdf)
   - [ruby](https://github.com/asdf-vm/asdf-ruby)
   - [nodejs](https://github.com/asdf-vm/asdf-nodejs)
   - [erlang](https://github.com/asdf-vm/asdf-erlang)
   - [elixir](https://github.com/asdf-vm/asdf-elixir)
1. ```
   $ bash symlink-setup.sh
   ```
1. ```
   $ asdf install
   ```

### Post Setup

#### Vim

```
:PlugInstall
```

#### Wakatime

```
:WakaTimeApiKey
```

#### deoplete

```
$ pip3 install --user pynvim
```

#### heroku-accounts

```
$ heroku plugins:install heroku-accounts
```

#### bash-completion

```
$ sudo curl -L https://raw.githubusercontent.com/docker/compose/1.23.2/contrib/completion/bash/docker-compose -o /usr/local/etc/bash_completion.d/docker-compose
```

#### Exercism

```
$ exercism configure --token=$TOKEN`
```

#### Magnet

##### Update shortcut

- update preferences
  - left: `^⌥ ,`
  - right: `^⌥ .`

#### iTerm2 Settings

##### Ignore command R

1. preferences
1. keys tabs
1. click + button
1. enter command + R
1. action: ignore

##### Fix vim trackpad issue

1. preferences
1. advance
1. mouse
1. scroll wheel send arrow keys...
1. No -> Yes

##### Fix key binding issue in tmux

1. preferences
1. profiles
1. Default
1. Keys Tab
1. Left ⌥ Key
   1. Normal -> Esc+

#### Keyboard

##### use capslock for `FN`

- dip switch 3: `ON`
