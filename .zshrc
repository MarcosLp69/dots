# We set the prompt
export PROMPT=" %F{red}%~%f %F{green}◇%f "

# We add ~/bin to $PATH
export PATH=$PATH:/home/marcos/bin:/home/marcos/i2p

# We source (import) the other files
source ~/aliases
source ~/functions

# We run ttycolor to set colors in TTY
ttycolor

# We run PyFetch
python ~/pyfetch/pyfetch.py
