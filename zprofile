# These lines should be added into ~/.zprofile


# Shortcut to open Visual Studio Code in the current folder
alias vsc='open . -a "Visual Studio Code"'

# Git push shortcut which force pushes the given branch.
# Useful when constantly ammending commits
# Handles both new and existing branches
gp() {
    if [[ "$1" =~ ^origin/.* ]]; then
        PREFIX="origin/"
        BRANCH=${1/#$PREFIX}
        git push --force-with-lease origin $BRANCH
    else
        git push -u origin $1
    fi
}