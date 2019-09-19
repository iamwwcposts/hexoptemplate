#### 一个将 Hexo 与 Github Issues 结合的模板

#### 注入环境变量

REPO_URL

值为 `https://github.com/iamwwc/yourrepo`

不要在最后写成 `https://github.com/iamwwc/yourrepo/`

如果是私有仓库，则还需要注入

GITHUB_TOKEN

#### 配置 Webhook

当Issues有更新时会触发 netlify 重新构建