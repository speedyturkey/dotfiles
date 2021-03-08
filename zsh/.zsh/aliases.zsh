# use homebrew-installed git
alias git="/usr/local/bin/git"

alias ls="exa"

# Venv
alias venv="python3 -m venv env"
alias svenv="source env/bin/activate"

# Hide hidden files
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles FALSE
killall Finder'

# Show hidden files
alias showhidden='defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder'

# silliness
alias please="sudo"

alias k="kubectl"
alias snowsql="/Applications/SnowSQL.app/Contents/MacOS/snowsql"
