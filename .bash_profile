# Load ~/.extras, ~/.bash_prompt, ~/.exports, ~/.aliases, ~/.functions, and ~/.secret
for file in ~/.{extras,bash_prompt,exports,aliases,functions,secret}; do
    [ -r "$file" ] && source "$file"
done
unset file

export EDITOR="nano"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

source ~/.bin/tmuxinator.bash
