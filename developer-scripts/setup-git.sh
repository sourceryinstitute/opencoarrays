#!/bin/bash
# Script to congigure OpenCoarrays contributor's git environment
# and add local git-hooks scripts to ensure properly
let global=0
if [[ "$1" ]]; then
    if [[ "$1" == "--global" ]]; then
	let global=1
	echo "WARNING: Settings will be applied globally. This may over-write some of your global git settings."
	read -p "Press Ctrl-C to abort, and try again without \`--global\` or press any key to contibue" foo
    else
	echo "Usage: $0 [--global] [--help]"
	echo ""
	echo "This script is to configure your git environment"
	echo "For contributing to OpenCoarrays. The \`--help\`"
	echo "flag will print this message. The \`--global\`"
	echo "flag will install the settings and hooks globally"
	echo "for the current git user and their future projects"
	exit 0
    fi
fi

if [[ $global -eq 1 ]]; then
    flags=--global
fi

system=$(uname)

if [[ "X$system" == "XDarwin" || "X$system" == "XLinux" ]]; then
    git config $flags core.autocrlf input
else # assume windows
# Safer, maybe, to just not do anything...
#    git fonfig $flags core.autocrlf true
fi

git config $flags core.whitespace trailing-space,space-before-tab,blank-at-eol,blank-at-eof

git config $flags apply.whitespace fix

git config $flags color.diff.whitespace red reverse

# Lets update some stuff to work better with submodules (for OFP)
git config $flags diff.submodule log

git config $flags status.submodulesummary 1

git config $flags push.recurseSubmodules check

git config alias.sdiff '!'"git diff && git submodule foreach 'git diff'"
git config alias.spush 'push --recurse-submodules=on-demand'
git config alias.supdate 'submodule update --remote --merge'

gitroot="$(git rev-parse --show-toplevel)"
echo "WARNING: About to install and overwrite project level githooks in $gitroot/.git/hooks"
read -p "Press Ctrl-C to abort or any key to continue" foo
for f in "$gitroot/developer-scripts/git-hooks/"*; do
    echo "Copying $f"
    cp "$f" "$gitroot/.git/hooks/"
done

if [[ $global -eq 1 ]]; then
    if [ -e "$HOME/.git_template" ]; then
	echo "Aborting global git hooks installation since user appears to already have a $HOME/.git_template directory"
	exit 1
    fi
    mkdir -p "$HOME/.git_template/hooks/"
    for f in "$gitroot/developer-scripts/git-hooks/"*; do
	echo "Copying $f"
	cp "$f" "$HOME/.git_template/hooks/"
    done
    git config --global init.templatedir "$HOME/.git_template"
fi
