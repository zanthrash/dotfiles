if status is-interactive

end

# SOURCES
source ~/.config/fish/my_functions.fish

# LOCAL config
if test -e ~/.config/local.fish
    source ~/.config/local.fish
end

# PATHS
fish_add_path /opt/homebrew/bin
fish_add_path ~/.local/bin

fnm env --use-on-cd --shell fish | source

set -g fish_key_bindings fish_vi_key_bindings

# Emulates vim's cursor shape behavior
# Set the normal and visual mode cursors to a block
set fish_cursor_default block blink
# Set the insert mode cursor to a line
set fish_cursor_insert line blink
# Set the replace mode cursors to an underscore
set fish_cursor_replace_one underscore blink
set fish_cursor_replace underscore blink
# Set the external cursor to a line. The external cursor appears when a command is started.
# The cursor shape takes the value of fish_cursor_default when fish_cursor_external is not specified.
set fish_cursor_external line
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block

set fish_vi_force_cursor 1

starship init fish | source

alias vim="nvim"
alias vi="nvim"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
