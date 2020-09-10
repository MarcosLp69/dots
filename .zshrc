# We set the prompt
export PROMPT=" %F{red}%~%f %F{green}◇%f "

# We add ~/bin to $PATH
export PATH=$PATH:/home/marcos/bin

# We source (import) the other files
source ~/aliases
source ~/functions

# We run ttycolor to set colors in TTY
ttycolor
