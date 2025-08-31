# Directory bookmarks file
BOOKMARKS_FILE=~/.dir_bookmarks

# Save a bookmark
mark() {
  echo "$1:$(pwd)" >>"$BOOKMARKS_FILE"
}

# Jump to a bookmark
goto() {
  target=$(grep "^$1:" "$BOOKMARKS_FILE" | tail -n 1 | cut -d: -f2-)
  if [ -n "$target" ]; then
    cd "$target" || echo "Directory not found"
  else
    echo "No bookmark named '$1'"
  fi
}

# List bookmarks
marks() {
  cat "$BOOKMARKS_FILE"
}

# Change dirs
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"

# ls alias
alias ll="ls -l"
alias la="ls -al"

# Bash config
alias sb="source .bashrc"
alias bashrc="nvim ~/.bashrc"

# System aliases
alias updateu="sudo apt update && sudo apt upgrade -y"

# Git helpers
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"

# Safety
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Frequent
alias v="nvim"
alias k="kubectl"
