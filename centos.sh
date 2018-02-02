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

# echo "Intel Galileo" >> test.txt  
