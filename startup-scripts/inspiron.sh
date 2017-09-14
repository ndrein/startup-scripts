###############################################################################
# DISPLAY
###############################################################################

export DISPLAY=0:0


###############################################################################
# WATERLOO
###############################################################################

export waterloo="ndreinha@ubuntu1604-002.student.cs.uwaterloo.ca"

function watssh {   
    ssh -X $waterloo
}                   


###############################################################################
# CS 350
###############################################################################

export PATH=$HOME/sys161/bin:$HOME/sys161/tools/bin:$PATH
export OS161TOP=$HOME/cs350-os161
                                                                                              
function run-kernel() {                                                                       
    $HOME/cs350-os161/os161-1.99/build.sh 1>/dev/null                                        
    cd $HOME/cs350-os161/root                                                                
    sys161 kernel                                                                             
}                                                                                             


###############################################################################
# LS-COLORS
###############################################################################

alias ls="/mnt/c/Users/ndrei/dev/ls-colors/bin/ls"
