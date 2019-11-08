#！/bin/bash

# 开始
set -e
set -x

# 进入 /usr/local/ 目录
cd /usr/local/

# 下载nodeJs
wget https://npm.taobao.org/mirrors/node/v12.13.0/node-v12.13.0-linux-x64.tar.xz

# 开始解压
tar -xvf node-v12.13.0-linux-x64.tar.xz

# 删除软件包
rm -rf node-v12.13.0-linux-x64.tar.xz

# 重命名
mv node-v12.13.0-linux-x64/ node

# 修改配置文件
echo 'export NODE_HOME=/usr/local/node' >> /etc/profile
echo 'export PATH=$NODE_HOME/bin:$PATH' >> /etc/profile

cd ~

set +x
echo '========================================node安装成功======================================='

# 安装yarn
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo yum -y install yarn

# 设置淘宝加速
yarn config set registry https://registry.npm.taobao.org

npm config set registry https://registry.npm.taobao.org --global
npm config set disturl https://npm.taobao.org/dist --global

set +x
echo '=================================运行完毕，恭喜您已完成安装================================'
