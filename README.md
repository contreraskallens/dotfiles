# Fedora

## Install git

```
dnf install git
```

## Set up sources

```
dnf copr enable dejan/lazygit lihaohong/yazi iucar/cran iucar/rstudio scottames/vicinae
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## Rustup

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup toolchain install nightly
```

## DNF

```
dnf install kitty nvim stow git lazygit vorta btop bat calibre yazi fish zathura R task fzf golang julia vicinae rstudio-desktop solaar xwayland-satellite niri uv udiskie wl-clipboard xdg-desktop-portal-gnome gnome-keyring xdg-desktop-portal-gtk polkit-kde steam distrobox R-CoprManager https://github.com/TibixDev/winboat/releases/download/v0.9.0/winboat-0.9.0-x86_64.rpm http://cdn.filen.io/@filen/desktop/release/latest/Filen_linux_x86_64.rpm
```

## Setup

```bash
systemctl --user enable vicinae --now
```
From niri docs:
> Note that to start plasma-polkit-agent with systemd on Fedora, you'll need to override its systemd service to add the correct dependency. Run: ```systemctl --user edit --full plasma-polkit-agent.service``` Then add ```After=graphical-session.target```

## Dank material

```bash
https://danklinux.com/docs/getting-started
```

## Install flatpaks

```
flatpak install flathub com.bitwarden.desktop com.spotify.Client org.zotero.Zotero org.ferdium.Ferdium app.zen_browser.zen com.calibre_ebook.calibre org.onlyoffice.desktopeditors org.mozilla.Thunderbird
```

## Other tools

```
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
cargo install --locked tree-sitter-cli
```

## Nerd fonts

```bash
cd ~/Downloads
mkdir fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/CascadiaMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Noto.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/ZedMono.zip
7z e -y FiraMono.zip -ofonts/
7z e -y CascadiaMono.zip -ofonts/
7z e -y JetBrainsMono.zip -ofonts/
7z e -y Noto.zip -ofonts/
7z e -y ZedMono.zip -ofonts/
cd fonts
cp -r . ~/.local/share/fonts/
fc-cache -f -r -v
```


# OpenSUSE

## Prerequisites

```bash
sudo zypper install xdg-desktop-portal xdg-desktop-portal-gtk xdg-user-dirs xdg-user-dirs-gtk xdg-utils git flatpak
sudo zypper in -t pattern devel_basis
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrep
sudo zypper install clang
```

## Basic software

```bash
sudo zypper install kitty neovim stow lazygit btop bat yazi rofi fish mako zathura R-base R-base-devel taskwarrior fzf go juliaup udiskie wl-clipboard chafa fd python313-neovim ripgrep zathura-plugin-cb zathura-plugin-djvu zathura-plugin-ps zoxide
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Less basic software

```bash
sudo zypper addrepo https://download.opensuse.org/repositories/home:AvengeMedia:danklinux/openSUSE_Tumbleweed/home:AvengeMedia:danklinux.repo
sudo zypper refresh
sudo zypper in sway
sudo zypper install libreoffice calibre quickshell brightnessctl ImageMagick ddcutil cliphist cava wlsunset xdg-desktop-portal evolution-data-server telegram-desktop bitwarden
sudo zypper install budgie-desktop
flatpak install flathub com.spotify.Client org.zotero.Zotero app.zen_browser.zen
cargo install --locked tree-sitter-cli
```

```bash
cd ~/Downloads/
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
cd
```

## Install Nerd fonts

```bash
cd ~/Downloads
mkdir fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/CascadiaMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Noto.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/ZedMono.zip
7z e -y FiraMono.zip -ofonts/
7z e -y CascadiaMono.zip -ofonts/
7z e -y JetBrainsMono.zip -ofonts/
7z e -y Noto.zip -ofonts/
7z e -y ZedMono.zip -ofonts/
cd fonts
cp -r . ~/.local/share/fonts/
fc-cache -f -r -v
```
