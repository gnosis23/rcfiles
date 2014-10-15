set auto-load safe-path /
set print pretty
# ----------- Alias --------------
define exit
  quit
end
document exit
alias "quit"
end

define hook-quit
  set confirm off
end
