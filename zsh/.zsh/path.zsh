# brew-installed gmake should override make in PATH
PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"
