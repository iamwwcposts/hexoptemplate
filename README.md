#### 一个将 Hexo 与 Github Issues 结合的奇思妙想

由 [Hexop](https://github.com/iamwwc/hexop) 强力驱动

#### 我为什么要创建这个仓库？

Hexo 自带各种主题，让我们专注于写文章，但 Hexo 却存在如下问题：

1. 需要在本地存储整个 Hexo 仓库
2. 如果想要修改文章的 tag，需要在本地打开仓库，修改，然后推送
3. 需要第三方图床的支持

我之前使用 `https://github.com/coderming/blogsue`在Issues上写文档，但`blogsue`全部的文章都需要在前端渲染，不利于SEO，相比于 Hexo，主题单一，没有足够的扩展功能。

我希望能够在网页上快速写文档。

为此我将 `Hexo` 与 `Github Issues` 结合了起来。

你只需要在 `issues` 上写文章，然后配置的各种CI服务会使用 Hexo 帮你构建发布。

#### 如果使用？

1. Clone 整个仓库（为了后文方便引用，我们将你克隆到本地的仓库定义为R，基于R推送到远程的仓库定为F），像原来一样配置 Hexo 的各种特性，将它推送到你的F中
2. R的配置文件中可能会包含你的敏感信息。这时你需要将云端的F设置为私有。为此你需要申请一个 `[token](https://github.com/settings/tokens)`
3. 到 [Netlify](https://app.netlify.com) `New site from Git`，找到F，创建一个网站
4. 为你的构建添加上几个环境变量
   1. REPO_URL: 填写你的 F 的地址 `https://github.com/iamwwc/hexoptemplate`
   2. 如果你的仓库为私有，那需要添加 `GITHUB_TOKEN`: `你在Github上申请的token`

![image](https://user-images.githubusercontent.com/24750337/65215479-3ea45f80-dae0-11e9-96e0-b623ab9e0d26.png)

5. 在 `Continuous Deployment -> Build hooks` 创建一个webhook
![image](https://user-images.githubusercontent.com/24750337/65215623-afe41280-dae0-11e9-91cd-46dd26164454.png)

6. 将这个 `webhook` 地址添加的你对应的 `github issues` 仓库的`webhook`中，类型选择 `issues`。
7. 比如我在 `https://github.com/iamwwc/blogsuepost` 的 issues 下面写文章，那你需要在 `https://github.com/iamwwc/blogsuepost` settings 界面填入从 netlify 申请的 webhook 链接
8. 到你通过issues写了一篇文章，或者修改了tags，那么网站会重新生成部署


享用吧！