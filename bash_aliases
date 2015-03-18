alias nssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias nscp='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias co='git checkout $(git branch | cut -c 3- | pick)'
alias h='$(history | cut -c8- | sort -u | pick)'
