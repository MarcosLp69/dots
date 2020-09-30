# Aliases
New-Alias alias "New-Alias"
alias vim nvim
alias pyfetch "python ~/pyfetch/pyfetch.py"
alias dog cat

# TOUCH
function touch($smexyname,$smexycontents){
	Set-Content $smexyname $smexycontents
}

# We declare psfetch!
function psfetch{
	Write-Host "hi"
}

# We make the pwdReplaceHome function, basically, pwd but if you're in /home/marcos it says ~
function pwdReplaceHome{
	return $(pwd | Convert-Path).replace("/home/"+$(whoami),"~")
}

# We set our prompt
function PROMPT{
	Write-Host ""$(pwdReplaceHome) -ForegroundColor Red -NoNewLine
	Write-Host " ◇" -ForegroundColor Green -NoNewLine
	return " "
}

# We make a function called mkdircd, which will make a directory and cd into it
function mkdircd($dir){
	mkdir $dir
	cd $dir
}

# If we're in TEETEEWHYONE run startx
if($(tty) -eq "/dev/tty1"){startx}

# Run TTYColor
sh ~/bin/ttycolor
