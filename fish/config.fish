if status --is-login
    set -gx PATH /usr/local/bin $PATH
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Linuxbrew completions
if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

# Activate oh-my-posh
oh-my-posh --init --shell fish --config https://raw.githubusercontent.com/henrikwilhelmsen/hwconfig/main/ohmyposh/hw_hul10.omp.json | source

# pyenv setup
pyenv init - | source

# pipenv config
set -gx PIPENV_VENV_IN_PROJECT 1
