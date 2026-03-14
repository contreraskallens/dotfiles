#!bin/bash
distrobox create dev
distrobox create utils

distrobox enter dev -- /bin/sh -e <<'EOF'
sudo zypper ar -y obs://devel:languages:R:released devel:languages:R:released
sudo zypper refresh
sudo zypper install -y R-base go juliaup python313-uv gcc rstudio
distrobox-export --bin /usr/bin/R
distrobox-export --bin /usr/bin/go
distrobox-export --bin /usr/bin/uv
distrobox-export --bin /usr/bin/julia
distrobox-export --bin /usr/bin/gcc
distrobox-export --app rstudio
EOF

distrobox enter utils -- /bin/sh -e <<'EOF'
sudo zypper addrepo -y https://download.opensuse.org/repositories/home:neifua/openSUSE_Tumbleweed/home:neifua.repo
sudo zypper refresh
sudo zypper install -y zathura rofi fuse libfuse2 noctalia-shell
echo -e '#!/bin/bash\nexec distrobox-host-exec niri \"$@\"' | sudo tee /usr/bin/niri > /dev/null
echo -e '#!/bin/bash\nexec distrobox-host-exec nmcli \"$@\"' | sudo tee /usr/bin/nmcli > /dev/null
distrobox-export --bin /usr/bin/zathura
distrobox-export --bin /usr/bin/qs
distrobox-export --bin /usr/bin/rofi
distrobox-export --app zathura
EOF
