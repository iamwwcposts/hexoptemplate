#/bin/bash

npm install -g hexo-cli
npm install

# get hexop binary
curl -s https://api.github.com/repos/iamwwc/hexop/releases/latest \
  | grep browser_download_url \
  | cut -d '"' -f 4 \
  | wget -i -
chmod u+x hexop
# run hexop
./hexop --repourl ${REPO_URL}

hexo g
hexo d