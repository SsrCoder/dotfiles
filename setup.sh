export PATH=$PATH:$HOME/bin
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

mkdir $HOME/bin
wget -O $HOME/bin/yadm https://raw.githubusercontent.com/TheLocehiliosan/yadm/master/yadm
chmod +x $HOME/bin/yadm
yadm clone https://github.com/SsrCoder/dotfiles.git --no-bootstrap
yadm checkout -f main

cd $HOME && yadm submodule update --init --recursive && yadm bootstrap
