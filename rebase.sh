#!/bin/bash
#Update of local staging
git checkout -B staging origin/staging
        
    for rebase_branch in $(git branch | cut -c 3-); do
        if [ "$rebase_branch" != "staging" && git show-ref --heads -s staging != git merge-base "$rebase_branch" staging]; then
                #Rebase featured branch
                git checkout $sync_branch
                git fetch --all
                git rebase -i staging
         fi
    done
