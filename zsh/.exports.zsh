#!/usr/bin/env zsh

export SHELL='/usr/local/bin/zsh'

# Fix ls: illegal option -- - in tmux
export PATH="/usr/local/bin://usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Provide ruby/dyn+ in vim
# export LDFLAGS="-L/usr/local/opt/ruby/lib"
# export CPPFLAGS="-I/usr/local/opt/ruby/include"
# export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

export NVIM_LOG_FILE="${HOME}/.local/share/nvim/log"

# History size
export HISTFILE=~/.zsh_history
export SAVEHIST="99999"
export HISTSIZE="99999"
export HISTFILESIZE="${HISTSIZE}"

# Make vim the default editor.
export EDITOR='nvim'

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8'

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}"

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X'

# Avoid issues with `gpg` as installed via Homebrew.
# https://stackoverflow.com/a/42265848/96656
export GPG_TTY=$(tty);

# `ls` color flavor
# Ref: https://github.com/sharkdp/vivid/
# $(vivid generate snappy)
export LS_COLORS='ln=0;38;2;255;106;193:di=0;38;2;87;199;255:fi=0:no=0:ex=1;38;2;255;92;87:pi=0;38;2;0;0;0;48;2;87;199;255:or=0;38;2;0;0;0;48;2;255;92;87:*~=0;38;2;102;102;102:mi=0;38;2;0;0;0;48;2;255;92;87:so=0;38;2;0;0;0;48;2;255;106;193:*.t=0;38;2;90;247;142:*.d=0;38;2;90;247;142:*.a=1;38;2;255;92;87:*.c=0;38;2;90;247;142:*.p=0;38;2;90;247;142:*.o=0;38;2;102;102;102:*.r=0;38;2;90;247;142:*.m=0;38;2;90;247;142:*.z=4;38;2;154;237;254:*.h=0;38;2;90;247;142:*.vb=0;38;2;90;247;142:*.go=0;38;2;90;247;142:*.di=0;38;2;90;247;142:*.pm=0;38;2;90;247;142:*.nb=0;38;2;90;247;142:*.7z=4;38;2;154;237;254:*.el=0;38;2;90;247;142:*.hs=0;38;2;90;247;142:*.gz=4;38;2;154;237;254:*.md=0;38;2;243;249;157:*.rm=0;38;2;255;180;223:*.ex=0;38;2;90;247;142:*.cs=0;38;2;90;247;142:*css=0;38;2;90;247;142:*.mn=0;38;2;90;247;142:*.fs=0;38;2;90;247;142:*.ts=0;38;2;90;247;142:*.jl=0;38;2;90;247;142:*.ko=1;38;2;255;92;87:*.hi=0;38;2;102;102;102:*.so=1;38;2;255;92;87:*.lo=0;38;2;102;102;102:*.bz=4;38;2;154;237;254:*.as=0;38;2;90;247;142:*.pp=0;38;2;90;247;142:*.rb=0;38;2;90;247;142:*.pl=0;38;2;90;247;142:*.py=0;38;2;90;247;142:*.hh=0;38;2;90;247;142:*.gv=0;38;2;90;247;142:*.la=0;38;2;102;102;102:*.sh=0;38;2;90;247;142:*.rs=0;38;2;90;247;142:*.js=0;38;2;90;247;142:*.xz=4;38;2;154;237;254:*.cp=0;38;2;90;247;142:*.ml=0;38;2;90;247;142:*.cr=0;38;2;90;247;142:*.kt=0;38;2;90;247;142:*.cc=0;38;2;90;247;142:*.ui=0;38;2;243;249;157:*.ps=0;38;2;255;92;87:*hgrc=0;38;2;165;255;195:*.bz2=4;38;2;154;237;254:*.rst=0;38;2;243;249;157:*.cpp=0;38;2;90;247;142:*.rar=4;38;2;154;237;254:*.csv=0;38;2;243;249;157:*.mp3=0;38;2;255;180;223:*.bcf=0;38;2;102;102;102:*.sql=0;38;2;90;247;142:*.bst=0;38;2;243;249;157:*.tif=0;38;2;255;180;223:*.ogg=0;38;2;255;180;223:*.ltx=0;38;2;90;247;142:*.com=1;38;2;255;92;87:*.bat=1;38;2;255;92;87:*.deb=4;38;2;154;237;254:*.dmg=4;38;2;154;237;254:*.dpr=0;38;2;90;247;142:*.bak=0;38;2;102;102;102:*.sxw=0;38;2;255;92;87:*.pgm=0;38;2;255;180;223:*.asa=0;38;2;90;247;142:*.pro=0;38;2;165;255;195:*.exs=0;38;2;90;247;142:*.yml=0;38;2;243;249;157:*.sxi=0;38;2;255;92;87:*.tgz=4;38;2;154;237;254:*.avi=0;38;2;255;180;223:*.awk=0;38;2;90;247;142:*.tml=0;38;2;243;249;157:*.mov=0;38;2;255;180;223:*.gvy=0;38;2;90;247;142:*.exe=1;38;2;255;92;87:*.erl=0;38;2;90;247;142:*.out=0;38;2;102;102;102:*.ico=0;38;2;255;180;223:*.rpm=4;38;2;154;237;254:*.blg=0;38;2;102;102;102:*.doc=0;38;2;255;92;87:*.php=0;38;2;90;247;142:*.ps1=0;38;2;90;247;142:*.ttf=0;38;2;255;180;223:*.h++=0;38;2;90;247;142:*.wmv=0;38;2;255;180;223:*.csx=0;38;2;90;247;142:*.tcl=0;38;2;90;247;142:*.wma=0;38;2;255;180;223:*.txt=0;38;2;243;249;157:*.fsi=0;38;2;90;247;142:*.svg=0;38;2;255;180;223:*.git=0;38;2;102;102;102:*TODO=1:*.vob=0;38;2;255;180;223:*.kts=0;38;2;90;247;142:*.ics=0;38;2;255;92;87:*.rtf=0;38;2;255;92;87:*.ppt=0;38;2;255;92;87:*.cfg=0;38;2;243;249;157:*.tar=4;38;2;154;237;254:*.m4v=0;38;2;255;180;223:*.xcf=0;38;2;255;180;223:*.aux=0;38;2;102;102;102:*.hxx=0;38;2;90;247;142:*.bib=0;38;2;243;249;157:*.pkg=4;38;2;154;237;254:*.tex=0;38;2;90;247;142:*.tmp=0;38;2;102;102;102:*.fon=0;38;2;255;180;223:*.xmp=0;38;2;243;249;157:*.pid=0;38;2;102;102;102:*.ppm=0;38;2;255;180;223:*.mid=0;38;2;255;180;223:*.dot=0;38;2;90;247;142:*.tsx=0;38;2;90;247;142:*.pyc=0;38;2;102;102;102:*.flv=0;38;2;255;180;223:*.idx=0;38;2;102;102;102:*.sbt=0;38;2;90;247;142:*.png=0;38;2;255;180;223:*.elm=0;38;2;90;247;142:*.bag=4;38;2;154;237;254:*.ini=0;38;2;243;249;157:*.lua=0;38;2;90;247;142:*.kex=0;38;2;255;92;87:*.pas=0;38;2;90;247;142:*.pod=0;38;2;90;247;142:*.fnt=0;38;2;255;180;223:*.bin=4;38;2;154;237;254:*.hpp=0;38;2;90;247;142:*.gif=0;38;2;255;180;223:*.clj=0;38;2;90;247;142:*.apk=4;38;2;154;237;254:*.fls=0;38;2;102;102;102:*.cxx=0;38;2;90;247;142:*.jpg=0;38;2;255;180;223:*.xml=0;38;2;243;249;157:*.sty=0;38;2;102;102;102:*.bbl=0;38;2;102;102;102:*.ilg=0;38;2;102;102;102:*.wav=0;38;2;255;180;223:*.epp=0;38;2;90;247;142:*.mpg=0;38;2;255;180;223:*.dll=1;38;2;255;92;87:*.odp=0;38;2;255;92;87:*.cgi=0;38;2;90;247;142:*.aif=0;38;2;255;180;223:*.pdf=0;38;2;255;92;87:*.fsx=0;38;2;90;247;142:*.swp=0;38;2;102;102;102:*.xls=0;38;2;255;92;87:*.inl=0;38;2;90;247;142:*.pbm=0;38;2;255;180;223:*.vcd=4;38;2;154;237;254:*.nix=0;38;2;243;249;157:*.vim=0;38;2;90;247;142:*.htm=0;38;2;243;249;157:*.dox=0;38;2;165;255;195:*.xlr=0;38;2;255;92;87:*.htc=0;38;2;90;247;142:*.c++=0;38;2;90;247;142:*.mli=0;38;2;90;247;142:*.log=0;38;2;102;102;102:*.jar=4;38;2;154;237;254:*.bmp=0;38;2;255;180;223:*.otf=0;38;2;255;180;223:*.ods=0;38;2;255;92;87:*.mp4=0;38;2;255;180;223:*.bsh=0;38;2;90;247;142:*.toc=0;38;2;102;102;102:*.tbz=4;38;2;154;237;254:*.iso=4;38;2;154;237;254:*.pps=0;38;2;255;92;87:*.ipp=0;38;2;90;247;142:*.odt=0;38;2;255;92;87:*.swf=0;38;2;255;180;223:*.ind=0;38;2;102;102;102:*.mkv=0;38;2;255;180;223:*.zip=4;38;2;154;237;254:*.img=4;38;2;154;237;254:*.zsh=0;38;2;90;247;142:*.arj=4;38;2;154;237;254:*.lisp=0;38;2;90;247;142:*.psd1=0;38;2;90;247;142:*.hgrc=0;38;2;165;255;195:*.psm1=0;38;2;90;247;142:*.fish=0;38;2;90;247;142:*.purs=0;38;2;90;247;142:*.conf=0;38;2;243;249;157:*.json=0;38;2;243;249;157:*.tbz2=4;38;2;154;237;254:*.lock=0;38;2;102;102;102:*.h264=0;38;2;255;180;223:*.orig=0;38;2;102;102;102:*.rlib=0;38;2;102;102;102:*.epub=0;38;2;255;92;87:*.bash=0;38;2;90;247;142:*.html=0;38;2;243;249;157:*.less=0;38;2;90;247;142:*.dart=0;38;2;90;247;142:*.java=0;38;2;90;247;142:*.mpeg=0;38;2;255;180;223:*.docx=0;38;2;255;92;87:*.pptx=0;38;2;255;92;87:*.jpeg=0;38;2;255;180;223:*.toml=0;38;2;243;249;157:*.diff=0;38;2;90;247;142:*.xlsx=0;38;2;255;92;87:*.yaml=0;38;2;243;249;157:*.make=0;38;2;165;255;195:*.flac=0;38;2;255;180;223:*.cache=0;38;2;102;102;102:*.swift=0;38;2;90;247;142:*.ipynb=0;38;2;90;247;142:*.class=0;38;2;102;102;102:*.cabal=0;38;2;90;247;142:*.scala=0;38;2;90;247;142:*.cmake=0;38;2;165;255;195:*.shtml=0;38;2;243;249;157:*README=0;38;2;40;42;54;48;2;243;249;157:*.patch=0;38;2;90;247;142:*passwd=0;38;2;243;249;157:*.toast=4;38;2;154;237;254:*.dyn_o=0;38;2;102;102;102:*.xhtml=0;38;2;243;249;157:*shadow=0;38;2;243;249;157:*.mdown=0;38;2;243;249;157:*.flake8=0;38;2;165;255;195:*INSTALL=0;38;2;40;42;54;48;2;243;249;157:*.ignore=0;38;2;165;255;195:*.dyn_hi=0;38;2;102;102;102:*.gradle=0;38;2;90;247;142:*.config=0;38;2;243;249;157:*COPYING=0;38;2;153;153;153:*.groovy=0;38;2;90;247;142:*.matlab=0;38;2;90;247;142:*LICENSE=0;38;2;153;153;153:*TODO.md=1:*.gemspec=0;38;2;165;255;195:*Doxyfile=0;38;2;165;255;195:*.desktop=0;38;2;243;249;157:*TODO.txt=1:*setup.py=0;38;2;165;255;195:*Makefile=0;38;2;165;255;195:*README.md=0;38;2;40;42;54;48;2;243;249;157:*.markdown=0;38;2;243;249;157:*COPYRIGHT=0;38;2;153;153;153:*.rgignore=0;38;2;165;255;195:*.cmake.in=0;38;2;165;255;195:*configure=0;38;2;165;255;195:*.fdignore=0;38;2;165;255;195:*.kdevelop=0;38;2;165;255;195:*README.txt=0;38;2;40;42;54;48;2;243;249;157:*.gitignore=0;38;2;165;255;195:*SConscript=0;38;2;165;255;195:*Dockerfile=0;38;2;243;249;157:*.scons_opt=0;38;2;102;102;102:*INSTALL.md=0;38;2;40;42;54;48;2;243;249;157:*.gitconfig=0;38;2;165;255;195:*SConstruct=0;38;2;165;255;195:*CODEOWNERS=0;38;2;165;255;195:*Makefile.in=0;38;2;102;102;102:*.gitmodules=0;38;2;165;255;195:*Makefile.am=0;38;2;165;255;195:*.synctex.gz=0;38;2;102;102;102:*.travis.yml=0;38;2;90;247;142:*LICENSE-MIT=0;38;2;153;153;153:*MANIFEST.in=0;38;2;165;255;195:*appveyor.yml=0;38;2;90;247;142:*CONTRIBUTORS=0;38;2;40;42;54;48;2;243;249;157:*.applescript=0;38;2;90;247;142:*configure.ac=0;38;2;165;255;195:*.fdb_latexmk=0;38;2;102;102;102:*.clang-format=0;38;2;165;255;195:*INSTALL.md.txt=0;38;2;40;42;54;48;2;243;249;157:*CMakeCache.txt=0;38;2;102;102;102:*.gitattributes=0;38;2;165;255;195:*CMakeLists.txt=0;38;2;165;255;195:*LICENSE-APACHE=0;38;2;153;153;153:*CONTRIBUTORS.md=0;38;2;40;42;54;48;2;243;249;157:*requirements.txt=0;38;2;165;255;195:*CONTRIBUTORS.txt=0;38;2;40;42;54;48;2;243;249;157:*.sconsign.dblite=0;38;2;102;102;102:*package-lock.json=0;38;2;102;102;102'
export LSCOLORS='GxFxCxDxBxegedabagaced'

# Zplugin
export PATH="$HOME/.zplugin/bin:$PATH"

# Theme styling
export BULLETTRAIN_PROMPT_ORDER=(time dir virtualenv aws kctx go rust git status cmd_exec_time)
export BULLETTRAIN_DIR_BG='110m'          # light blue
export BULLETTRAIN_DIR_FG=black
export BULLETTRAIN_DIR_EXTENDED=2
export BULLETTRAIN_TIME_BG='250m'         # grey
export BULLETTRAIN_VIRTUALENV_BG='69m'    # blue
export BULLETTRAIN_VIRTUALENV_FG=black
export BULLETTRAIN_VIRTUALENV_PREFIX=py
export BULLETTRAIN_AWS_BG='169m'          # purple
export BULLETTRAIN_KCTX_PREFIX='☸️  '
export BULLETTRAIN_KCTX_BG='61m'
export BULLETTRAIN_GO_BG='30m'
export BULLETTRAIN_KCTX_KCONFIG=$([ ! -z "$KUBECONFIG" ] && echo $KUBECONFIG || echo "$HOME/.kube/config")

# Set the ENHANCD_FILTER variable to `fzy` as the first one
export ENHANCD_FILTER="fzy:fzf"

# Python version
export PY2_VER=2.7.15
export PY3_VER=3.7.1

# Setup pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1 # Fix prompt warning

# Setup goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export GO111MODULE=auto

# Setup path for go
export GOPATH="$HOME/Workspace/Golang"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

# Setup flutter
export PATH="$PATH:$HOME/Library/flutter/bin"

# Add kubectl plugins to PATH
export PATH="$PATH:$HOME/.kube/plugins"
