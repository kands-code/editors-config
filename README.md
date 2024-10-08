# config.d

This repository stores all the configurations I am using.

## bash

**bash** config for GNU/Linux user.

```bash
ln -sf "<path-to-project>/bash/bashrc" "$HOME/.bashrc"
ln -sf "<path-to-project>/bash/profile" "$HOME/.profile"
mkdir -p "$HOME/.local/share/bash"
ln -sf "<path-to-project>/bash/completions" "$HOME/.local/share/bash/completions"
```

## environment.d

XDG environment configuration, some commonly used environment variables.

Gnome and KDE (maybe?) and Wayland environments with Systemd will load these environment variables.

```bash
ln -sf "<path-to-project>/environment.d" "$HOME/.config/environment.d"
```

## nushell

This is the configuration I used when I used **nushell**.

It has not been updated for a long time.
If you are interested, you can update the configuration
according to the configuration of **zsh** or **bash**.

```bash
ln -sf "<path-to-project>/nushell" "$HOME/.config/nushell"
# for macOS user
ln -sf "<path-to-project>/nushell" "$HOME/Library/Application Support/nushell"
```

## others

Some miscellaneous configurations.

### nano

Highlighting configuration for **nano** or **pico** editor.

```bash
mkdir "$HOME/.config/nano"
ln -sf "<path-to-project>/others/nano/extra" "$HOME/.config/nano/extra"
cp "<path-to-project>/others/nano/nanorc" "$HOME/.config/nano/nanorc"
# for macOS user
# need modify config to macOS configure
nano ~/.config/nano/nanorc
```

### fastfetch

**fastfetch** configuration with simplified information.

```bash
ln -sf "<path-to-project>/others/fastfetch" "$HOME/.config/fastfetch"
```

### systemd/user

Some user configuration for **systemd**.

- **nobeep.service**, disable `pcspkr` module for GNU/Linux.
- **nokbd.service**, disable laptop keyboard by disabling `atkbd` module for GNU/Linux.
- **rclone-onedrive.service**, mount the OneDrive via rclone.
- **pipewire-session-manager.serivce**, configuration generated by pipewire.

> nobeep and nokbd should change the password to YOUR password

```bash
ln -sf "<path-to-project>/others/systemd" "$HOME/.config/systemd"
```

### dns-config.md & dns.conf

Instructions and configuration for configuring **systemd-resolved**.

### git.conf

**git** user-global configuration file.

```bash
# just copy and modify the content
# for example
mkdir -p "$HOME/.config/git"
cp "<path-to-project>/others/git.conf" "$HOME/.config/git/config"
nano "$HOME/.config/git/config"
```

### local.conf

**fontconfig** user configuration.

It is recommended to configure it globally.
You can change the font to what you want.

The font name can be checked using `fc-list | grep <font-name>`.

```bash
sudo ln -sf "<path-to-project>/others/local.conf" "/etc/fonts/local.conf"
```

#### npmrc

Configuration files for **npm**.

```bash
mkdir -p "$HOME/.config/npm"
ln -sf "<path-to-project>/others/npmrc" "$HOME/.config/npm/npmrc"
```

### paru.conf

Configuration files for **paru**.

```bash
ln -sf "<path-to-project>/others/paru.conf" "$HOME/.config/paru.conf"
```

#### RProfile

there is a backup for R profile

```r
options(repos=structure(c(CRAN="https://mirrors.ustc.edu.cn/CRAN/")))
# options("browser"="firefox")
options("browser"="microsoft-edge")
options("editor"="nano")
options("encoding"="utf8")
```

### ssh.conf

Configuration files for **ssh**.

```bash
mkdir -p "$HOME/.ssh"
ln -sf "<path-to-project>/others/ssh.conf" "$HOME/.ssh/conf"
```

### user.dict.txt

**ibus-libpinyin** input method user dictionary, as a backup.

## pip

Configuration files for **python**, **pip**, and **rye**.

```bash
ln -sf "<path-to-project>/pip" "$HOME/.config/pip"
```

If using Rye:

```bash
ln -sf "<path-to-project>/pip/rye-config.toml" "<path-to-rye>/config.toml"
```

## zsh

Configuration file for **zsh**.

```shell
ln -sf "<path-to-project>/zsh/zshenv" "$HOME/.zshenv"
mkdir -p "$HOME/.config/zsh"
ln -sf "<path-to-project>/zsh/zshrc" "$HOME/.config/zsh/.zshrc"
ln -sf "<path-to-project>/zsh/zfunc" "$HOME/.config/zsh/zfunc"
```

> Please check the configuration content before using it
> and modify it to your actual configuration.
> I will not be responsible for any problems.
