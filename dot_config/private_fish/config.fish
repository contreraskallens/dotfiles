if status is-interactive
    set -gx EDITOR 'nvim'
    set -gx ZK_NOTEBOOK_DIR '/home/omfgzell/Documents/notes'
    set -gx R_AUTO_START true
end
fish_add_path /home/omfgzell/AppImages
fish_add_path /home/omfgzell/.local/share/nvim/mason/bin
alias filen="filen.appimage"
alias winboat="winboat.appimage"
set --global --export HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew";
set --global --export HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar";
set --global --export HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew";
fish_add_path --global --move --path "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin";
if test -n "$MANPATH[1]"; set --global --export MANPATH '' $MANPATH; end;
if not contains "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH; set --global --export INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH; end;
