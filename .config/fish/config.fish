if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Env variables
set -gx HOMEBREW_PREFIX "/opt/homebrew";
set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/opt/homebrew";

! set -q PATH; and set PATH ''; set -gx PATH "/opt/homebrew/bin" "/opt/homebrew/sbin" $PATH;
! set -q MANPATH; and set MANPATH ''; set -gx MANPATH "/opt/homebrew/share/man" $MANPATH;
! set -q INFOPATH; and set INFOPATH ''; set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH;

set -gx NVM_DIR "$HOME/.nvm"

# Path
fish_add_path /Applications/Wireshark.app/Contents/MacOS;
fish_add_path $HOME/go/bin;
fish_add_path /opt/homebrew/opt/openjdk/bin;
fish_add_path $HOME/.nvm
fish_add_path $HOME/.nvm/versions/node/v22.16.0/bin/

# Aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vim='nvim'
