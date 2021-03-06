echo 'centos 装机脚本'

echo '更新内核'
yum update kernel

echo '更新软件仓库'
yum update && yum upgrade 

echo '安装软件 zsh git wget'
yum -y install zsh git wget

source ~/.zshrc

echo '安装o-my-zsh'
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo 'nvm'
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | zsh

echo '将nvm加入zshrc'
echo '
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc && source ~/.zshrc

# echo '设置npm淘宝源'
# echo '
# export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
# export NVM_IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs' >> ~/.zshrc && source ~/.zshrc

echo '安装docker'
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# echo '安装最新node'
# nvm install stable
