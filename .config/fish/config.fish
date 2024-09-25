function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

function starship_transient_rprompt_func
    starship module time
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

starship init fish | source
enable_transience
if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end

alias pamcan=pacman

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end


# pnpm
set -gx PNPM_HOME "/home/tsb/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

alias rlax="cd ~/rms/rlax/exposure-analytics"
