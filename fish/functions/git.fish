alias gs "git status"
alias ga "git add ."
alias gc "git commit -m"
alias gp "git push"

function gcp
    git add . ; git commit -m $argv ; git push;
end
