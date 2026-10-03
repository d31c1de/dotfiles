if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

# preferred editor
if test -n "$SSH_CONNECTION"
    set -gx EDITOR vim
else
    set -gx EDITOR nvim
end

# yazi: cd to last dir on exit
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    command rm -f -- "$tmp"
end

# zoxide
zoxide init fish --cmd cd | source

# fzf
fzf --fish | source

# Paths
fish_add_path $HOME/.local/bin /opt/homebrew/bin /opt/homebrew/sbin

# pyenv
pyenv init - fish | source

# vi-mode
function fish_user_key_bindings
    # Execute default vi key bindings first if needed
    fish_vi_key_bindings

    # Bind 'jk' in insert mode to move back one character and switch to normal mode
    bind -M insert -m default jk backward-char force-repaint
    bind -M insert \cf accept-autosuggestion
end
set fish_key_bindings fish_user_key_bindings

#alias
alias ls="eza --icons=auto --color=auto"
alias foundry="/Users/taptat/Applications/start-foundry.sh"
alias start-komorebi="komorebic enable-autostart; brew services start borders; skhd --start-service"
alias stop-komorebi="komorebic disable-autostart; brew services stop borders; skhd --stop-service"
alias http-server="npx http-server"
