# Requirements:
# 1. timer | https://github.com/caarlos0/timer
# 2. spd-say | for Debian : apt-get install speech-dispatcher 

declare -A pomo_options
pomo_options["work"]="45" # can be changed
pomo_options["break"]="10" # can be changed

pomodoro () {

  # shellcheck disable=SC2166
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
  echo "$1"
  timer ${pomo_options["$val"]}m
  spd-say "'$1' session done"
  fi
}

alias wo="pomodoro 'work'"
alias br="pomodoro 'break'"