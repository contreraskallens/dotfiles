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
dnf install kitty nvim lazygit vorta btop bat calibre yazi fish zathura R task fzf golang julia vicinae rstudio-desktop solaar xwayland-satellite niri uv udiskie wl-clipboard xdg-desktop-portal-gnome gnome-keyring xdg-desktop-portal-gtk polkit-kde steam distrobox R-CoprManager https://github.com/TibixDev/winboat/releases/download/v0.9.0/winboat-0.9.0-x86_64.rpm http://cdn.filen.io/@filen/desktop/release/latest/Filen_linux_x86_64.rpm
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
sudo zypper ref
sudo zypper dup
sudo zypper install git kitty neovim fish flatpak opi clang
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrep
sudo zypper addrepo https://download.opensuse.org/repositories/devel:/languages:/R:/released/openSUSE_Tumbleweed/ R-released
```

## Basic

```bash
sudo zypper install neovim lazygit btop bat yazi zathura R-base solaar xwayland-satellite niri xdg-desktop-portal-gnome gnome-keyring xdg-desktop-portal-gtk polkit-kde-agent-6 steam distrobox taskwarrior fzf go juliaup udiskie ripgrep chezmoi clang https://github.com/TibixDev/winboat/releases/download/v0.9.0/winboat-0.9.0-x86_64.rpm http://cdn.filen.io/@filen/desktop/release/latest/Filen_linux_x86_64.rpm
```

## Rustup

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup toolchain install nightly
```

## Less basic software

```bash
sudo zypper addrepo https://download.opensuse.org/repositories/home:AvengeMedia:danklinux/openSUSE_Tumbleweed/home:AvengeMedia:danklinux.repo
sudo zypper addrepo https://download.opensuse.org/repositories/home:/AvengeMedia:/dms/openSUSE_Tumbleweed/home:AvengeMedia:dms.repo
sudo zypper addrepo https://download.opensuse.org/repositories/devel:languages:R:autoCRAN/openSUSE_Tumbleweed/devel:languages:R:autoCRAN.repo
sudo zypper refresh
sudo zypper install dms docker docker-compose docker-compose-switch freerdp
flatpak install flathub com.bitwarden.desktop com.spotify.Client org.zotero.Zotero org.ferdium.Ferdium app.zen_browser.zen com.calibre_ebook.calibre org.onlyoffice.desktopeditors org.mozilla.Thunderbird com.borgbase.Vorta
cargo install --locked tree-sitter-cli
opi vicinae
systemctl --user enable vicinae --now
sudo systemctl enable docker
sudo usermod -aG docker $USER
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Follow https://cran.r-project.org/web/packages/bspm/readme/README.html for R packages


```bash
cd ~/Downloads/
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
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
