#!bin/bash
distrobox create dev
distrobox create utils

distrobox enter dev -- /bin/sh -e <<'EOF'
sudo dnf copr enable -y iucar/cran
sudo dnf copr enable -y iucar/rstudio
sudo dnf install -y R golang julia uv gcc rstudio-desktop R-CoprManager
distrobox-export --bin /usr/bin/R
distrobox-export --bin /usr/bin/go
distrobox-export --bin /usr/bin/uv
distrobox-export --bin /usr/bin/julia
distrobox-export --bin /usr/bin/gcc
distrobox-export --app rstudio
EOF

distrobox enter utils -- /bin/sh -e <<'EOF'
sudo dnf config-manager addrepo -y --from-repofile=https://github.com/terrapkg/subatomic-repos/raw/main/terra.repo
sudo dnf install -y zathura rofi fuse fuse-libs noctalia-shell
echo -e '#!/bin/bash\nexec distrobox-host-exec niri \"$@\"' | sudo tee /usr/bin/niri > /dev/null
echo -e '#!/bin/bash\nexec distrobox-host-exec nmcli \"$@\"' | sudo tee /usr/bin/nmcli > /dev/null
distrobox-export --bin /usr/bin/zathura
distrobox-export --bin /usr/bin/qs
distrobox-export --bin /usr/bin/rofi
distrobox-export --app zathura
EOF
