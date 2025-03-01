function cat --wraps='bat --theme gruvbox-dark' --description 'alias cat bat --theme gruvbox-dark'
    bat --theme gruvbox-dark $argv
end

function lg --wraps=lazygit --description 'alias lg lazygit'
    lazygit $argv
end

function ls --wraps='eza -la --icons always --color always --git' --description 'alias ls eza -la --icons always --color always --git'
    eza -la --icons always --color always --git $argv
end

function rmi
    rm -i $argv
end

function take
    mkdir -p "$argv[1]"; and cd "$argv[1]"
end
