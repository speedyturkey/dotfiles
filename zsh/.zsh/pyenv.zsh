# initialize pyenv
if command -v pyenv 1>/dev/null 2>&1; then
    export PATH="${HOME}/.pyenv/shims:${PATH}"
    eval "$(pyenv init -)"
fi
