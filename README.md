# Dotfiles for my zsh (macos & fedora37)

Managed with [dotbot](https://github.com/anishathalye/dotbot) and [antigen](https://github.com/zsh-users/antigen)

## Before you start
Assume that you have a directory for your dotfiles `.dotfiles/` ready

```
cd ~/.dotfiles 
git init # initialize repository if needed

# add dotbot
git submodule add https://github.com/anishathalye/dotbot 
git config -f .gitmodules submodule.dotbot.ignore dirty # ignore dirty commits in the submodule
cp dotbot/tools/git-submodule/install .
touch install.conf.yaml

# add antigen 

git submodule add https://github.com/zsh-users/antigen
```

## Bootstrapping
> Refer to [install.conf.yaml](https://github.com/juntereiner/dotfiles/blob/master/install.conf.yaml) for more info

Run ./install


## References

- https://github.com/holman/dotfiles
- https://github.com/rafaeleyng/dotfiles
- https://github.com/PixelJonas/dotfiles
- https://github.com/zsh-users/antigen
- https://github.com/anishathalye/dotbot

## To-do

- [ ] clean up p10k.zsh
- [ ] add sops age config

### notes

[bugs]
https://github.com/golang/go/pull/53986 : need to downgrade `oc`
