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
oh-my-posh --init --shell fish --config https://gist.github.com/henrikwilhelmsen/05f24c9cae045d58571d6695344bbbdd/raw/hul10_hw.omp.json | source

# pyenv setup
pyenv init - | source

# pipenv config
set -gx PIPENV_VENV_IN_PROJECT 1
