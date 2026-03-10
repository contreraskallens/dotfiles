if status is-interactive
    set -gx EDITOR 'nvim'
    set -gx ZK_NOTEBOOK_DIR '/home/omfgzell/Documents/notes'
    set -gx R_AUTO_START true
end
fish_add_path /home/omfgzell/AppImages
fish_add_path /home/omfgzell/.local/share/nvim/mason/bin
alias filen="filen.appimage"
alias winboat="winboat.appimage"
