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
sudo dnf install -y zathura
distrobox-export --bin /usr/bin/zathura
distrobox-export --app zathura
EOF
