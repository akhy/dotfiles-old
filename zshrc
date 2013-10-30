unsetopt correct_all

export EDITOR=vim
export PATH=~/.dotfiles/bin:$PATH
export PATH=$PATH:~/.android-sdk/tools:~/.android-sdk/platform-tools


alias paclean="sudo pacman -Rs \$(pacman -Qqtd)"
alias pachist="cat /var/log/pacman.log | grep \"pacman -S\" | less"
alias ttytter="ttytter -ansi"

for r in $HOME/.dotfiles/zsh.d/*.zsh; do
  if [[ $DEBUG > 0 ]]; then
    echo "zsh: sourcing $r"
  fi
  source $r
done