export PATH=$HOME/versioned/personal/scripts:$PATH
#export PATH=$PATH:$HOME/.dotnet:$HOME/.dotnet/tools
#export PATH="/opt/homebrew/opt/dotnet@6/bin:$PATH"
export PATH="$PATH:/Users/olofmoriya/.dotnet/tools"
export PATH="$PATH:/usr/local/share/dotnet/sdk"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin
export PATH="$PATH:/Users/olofmoriya/.cargo/bin"
export PATH="/opt/homebrew/opt/ruby@2.7/bin:$PATH"
export PATH=/opt/homebrew/lib/ruby/gems/2.7.0/bin:$PATH
export PATH=/usr/local/lib/ruby/gems/2.7.0/bin:$PATH

export EDITOR=nvim

export BAT_THEME="Nord"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

alias lsg='exa -la | grep'
alias lss='exa -la'
alias ls='exa'

alias ss='bash tmux-sessionizer.sh'

alias mtdauth='export MTDTOKEN=$(~/versioned/personal/curl/mtd/auth-mtd.sh | jq '.token'|sed s/\"//g)'

alias gl='git log --graph --pretty=oneline --abbrev-commit'
alias bdiff='git diff --name-only --relative --diff-filter=d | xargs batcat --diff'

alias note='~/versioned/personal/scripts/ripgrep_notes.sh'

alias td='~/versioned/personal/todo-tui/target/release/todo-tui'
alias tdt='~/versioned/personal/todo-tui/target/release/todo-tui -d $(date '+%Y-%m-%d')'

alias jme='jira issue list -a$(jira me)'
alias jc='jira issue create'
alias jb='~/versioned/personal/scripts/jira-branch.sh'
alias ji='~/versioned/personal/scripts/jira-fzf.sh'

alias vim='nvim -c "Telescope find_files theme=ivy"'

alias rfv='~/versioned/personal/scripts/rfv.sh'
alias pg='~/versioned/personal/scripts/pretty-grep.sh'

alias gpt='~/versioned/personal/chat/target/release/chat'
alias actions='rg -e "- \[ \]|-\[ \]" ~/versioned/personal/notes'
alias n='~/versioned/personal/scripts/day-note.sh'
alias a='~/versioned/personal/scripts/day-action.sh'
alias t='~/versioned/personal/scripts/print-todays-note.sh'
alias et='~/versioned/personal/scripts/edit-today-note.sh'
alias chat='~/versioned/personal/chat/target/release/chat'
alias ci='~/versioned/personal/scripts/tmux-chat.sh -i'
alias cc='~/versioned/personal/scripts/tmux-chat.sh -c'
alias c='~/versioned/personal/scripts/tmux-chat.sh'
alias today='~/versioned/personal/chat/target/release/chat -c planner -m "Make an extensive plan for today so I get everything needed done based on my calander and my todolist:\n\n$(calt)\n\nTodos:\n$(tdt)\jira issues:\n\n$(jme --plain -s "In Progress" - "To do")"'

alias calt='icalBuddy -f -n -eep "notes" eventsToday'
alias bn='~/versioned/work/utils/birdnest/birdnest.sh'
alias gc='~/versioned/work/utils/gcloud.sh'

alias forw='~/versioned/work/utils/env-port-forward.sh'
alias kp='~/versioned/work/utils/kill-port.sh'

alias maxpods='~/versioned/personal/scripts/max-pods-history.sh'

bnauth() {
  export BIRDNEST_API_TOKEN=$(~/versioned/work/utils/birdnest/birdnest-auth.sh $1 $2)
}

export JIRA_API_TOKEN=""
export OPENAI_API_KEY=""

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval 
            fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=zsh;
                export TF_ALIAS=fuck;
                TF_SHELL_ALIASES=$(alias);
                export TF_SHELL_ALIASES;
                TF_HISTORY="$(fc -ln -10)";
                export TF_HISTORY;
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
                ) && eval $TF_CMD;
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                test -n "$TF_CMD" && print -s $TF_CMD
            }
        
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
alias pubsub='gcloud beta emulators pubsub start'
