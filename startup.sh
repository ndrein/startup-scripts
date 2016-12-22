###############################################################################
# FUNCTIONS
###############################################################################

function profile {
    source ~/.bash_profile
}

# wincopy <file1> <file2>
function wincopy {
    COPY_TMP=`for f in $@; do readlink -f $f; done`
}

# Copy all files from wincopy to .
function winpaste {
   rsync --recursive --human-readable --progress $COPY_TMP .
}

function path {
    readlink -f $1
}  


###############################################################################
# EDITOR
###############################################################################

# Use vim as the default editor
export EDITOR=vim


###############################################################################
# FASD
###############################################################################

# Initialize [fasd](https://github.com/clvv/fasd/wiki)
eval "$(fasd --init auto)"
# Use 'v' to open any file
alias v="f -e vim"
# Autocomplete 'v'
_fasd_bash_hook_cmd_complete v


###############################################################################
# LESS
###############################################################################

export LESS="-R"


###############################################################################
# ALIAS
###############################################################################

alias ll="ls -l --human-readable -g --no-group -t"
alias grep="egrep"
alias rsync="rsync --progress --human-readable --recursive"
