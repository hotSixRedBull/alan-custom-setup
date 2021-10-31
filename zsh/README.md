### location
- For mac: `~/.zshrc`

### pre-install
- oh-my-zsh
- powerlevel10k theme
- zplug

### Usage
- zshrc: `source %` in the file or `source ~/.zshrc` in the terminal 
- zplug: `zplug load`

### Troubleshoot
- I should've add below code for using zplug in terminal

```
if [ -f ${HOME}/.zplug/init.zsh ]; then
    source ${HOME}/.zplug/init.zsh
fi

export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh
```
