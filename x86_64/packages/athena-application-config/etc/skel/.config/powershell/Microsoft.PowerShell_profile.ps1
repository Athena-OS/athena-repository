function prompt() 
{ 
  $ESC=$([char]27)
  "$ESC[32m┌──L3ts D0 1t $(whoami)💣$ESC[00m$($executionContext.SessionState.Path.CurrentLocation)$("`r`n$ESC[31m└──╼Weaponizing PowerShell...🚀>$ESC[00m" * ($nestedPromptLevel + 1)) ";
}
