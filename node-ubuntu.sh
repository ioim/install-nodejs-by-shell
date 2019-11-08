#！/bin/bash

# 开始
set -e
set -x

# 安装nodeJs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

# 安装yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

# 设置淘宝加速
yarn config set registry https://registry.npm.taobao.org

set +x
echo '=================================运行完毕，恭喜您已完成安装================================'
