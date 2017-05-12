# to be stored in ~/.config/fish/config.fish

set -g -x PATH /usr/local/bin $PATH

function add_to_path --description 'Persistently prepends paths to your PATH'
  set --universal fish_user_paths $fish_user_paths $argv
end

set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

function fish_prompt 
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    set_color -b brblue
    set_color black
    echo -n (date +%H:%M)' ' 
    set_color white
    echo -n (whoami)
    set_color bryellow
    echo -n (prompt_pwd)
    set_color normal
    #echo -n '('"$git_branch"')'
    echo -n (__fish_git_prompt)
    set_color green
    echo -n ' $ '
    set_color -b normal
    set_color normal
end

add_to_path /usr/bin /bin /usr/local/bin /usr/sbin /sbin
export PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias ll "ls -al"
alias lldir "ls -ld */"
alias clip "pbcopy"

alias mi "mvn clean install"
alias mist "mvn clean install -DskipTests=true"
alias micd "mvn clean install -Pcopy-deps"
alias gb "gradle clean build"
alias fit "git"
alias gut "git"
alias got "git"
alias master "git checkout master"
alias pull "git stash -u; AND git pull --rebase; AND git stash pop"
alias last "git log -n 1 --stat | cat"
alias dc "docker ps -aq | xargs docker rm -f"
alias dps "docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}\t{{.Names}}'"

# Use below if using docker machine
#eval (docker-machine env default)
#set DOCKER_MAHINE_NAME default
