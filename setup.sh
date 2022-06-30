mkdir $HOME/bin
wget -O $HOME/bin/yadm https://raw.githubusercontent.com/TheLocehiliosan/yadm/master/yadm
chmod +x $HOME/bin/yadm
export PATH=$PATH:$HOME/bin
yadm clone https://github.com/SsrCoder/dotfiles.git --no-bootstrap
yadm checkout -f main
cd $HOME && yadm submodule update --init --recursive && yadm bootstrap
