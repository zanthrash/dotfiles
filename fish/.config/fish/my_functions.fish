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

function fuck -d "Correct your previous console command"
    set -l fucked_up_command $history[1]
    env TF_SHELL=fish TF_ALIAS=fuck PYTHONIOENCODING=utf-8 thefuck $fucked_up_command THEFUCK_ARGUMENT_PLACEHOLDER $argv | read -l unfucked_command
    if [ "$unfucked_command" != "" ]
        eval $unfucked_command
        builtin history delete --exact --case-sensitive -- $fucked_up_command
        builtin history merge
    end
end
