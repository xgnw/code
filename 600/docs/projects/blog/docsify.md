# 1. 安装 Node.js

进入官网[https://nodejs.org/zh-cn/download/](https://nodejs.org/zh-cn/download/)下载所需版本，傻瓜式安装。安装完成后进入命令行输入：

```bash
node -v
```

如果成功返回版本号则表示安装成功。

# 2. 安装 Docsify

推荐全局安装 `docsify-cli` 工具，可以方便地创建及在本地预览生成的文档。

```bash
npm i docsify-cli -g
```

# 3. 初始化项目

进入项目文件夹，输入：

```bash
docsify init
```

初始化项目。初始化成功后可以看到项目文件夹下创建了 3 个文件：

- `index.html` 入口文件
- `README.md` 会做为主页内容渲染
- `.nojekyll` 用于阻止 GitHub Pages 忽略掉下划线开头的文件

# 4. 本地预览

通过运行 `docsify serve` 启动一个本地服务器，可以方便地实时预览效果。默认访问地址 [http://localhost:3000](http://localhost:3000/) 。

```bash
docsify serve
```

# 5. 个性化定制与写作

参照[官方文档](https://docsify.js.org/#/zh-cn/)选择需要用到的插件添加到 `index.html` 中，使用说明也比较齐全，和一般的 Markdown文件编写的语法没太大区别。

# 6. 部署到 Github Pages

1. 在 Github 上创建一个私有仓库

2. 将本地项目文件夹推送到仓库中

   ```bash
   git init
   git add .
   git commit -m "first commit"
   git remote add origin git@github.com:dreaming-coder/dreaming-coder.github.io.git
   git branch -M main
   git push -u origin main
   ```

3. 在 setting 选项卡中找到 Pages 服务，添加解析的域名，即可用自定义的域名访问

# 7. 使用 Vercel 加速访问

> 下面的内容转自 [https://www.cnblogs.com/xuyiyang/p/13647069.html](https://www.cnblogs.com/xuyiyang/p/13647069.html)

Vercel 官网地址：[https://vercel.com/](https://vercel.com/)

1. 首先打开[https://vercel.com/signup](https://vercel.com/signup)，点击 `Continue with Github`。

   ![step-01](https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/vercel-step-01.q4g1v420in4.webp ':size=70%')

2. 出现授权页面，点击`Authorize Vercel`。

   ![step-02](https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/vercel-step-02.6zp2fqo8gsg0.webp ':size=40%')

3. 创建博客，点击`New Project`。

   ![step-03](https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/vercel-step-03.4m76j34b41e0.webp ':size=80%')

4. `import` 你的 GitHub Pages 仓库，此时第一次会让你安装 `Vercel for Github` 插件，一路确定就可以看到你的仓库倒在下拉列表显示，选中 Pages 仓库导入。

   ![step-04](https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/vercel-step-04.7axr660ly340.webp ':size=40%')

5. 绑定域名

   在 Vercel 的控制面板里打开你的项目 > `Settings` > `Domains`，在输入框里输入你想绑定的域名，此处我用`yilei.space`。接着它会提示错误，这是因为我还没有设置域名解析。你需要按照提示在域名提供商那里做CNAME解析，我是在阿里云注册的域名，其他的域名注册商应该也大同小异。

​	
