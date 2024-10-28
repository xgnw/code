﻿

配置gi t

```
git config --global user.name "username"
git config --global user.email "username@example.com"
```

忽略文件：

扩展名为.pyc的文件是根据.py文件自动生成的，因此我们无需让Git跟踪它们。这些文件存 储在目录__pycache__中。为让Git忽略这个目录，创建一个名为.gitignore的特殊文件（这个文件 名以句点打头，且没有扩展名），

```
.gitignore
```

这让Git忽略目录__pycache__中的所有文件。使用文件.gitignore可避免项目混乱，开发起来 更容易。



初始化仓库：

```
git init
```

查看当前项目状态

```
git status
```

将文件加入到仓库中

```
git add .
git status
```

执行提交

```
git commit -m "first commit"
git status
```

查看提交历史

```
git log
```

第二次提交

```
git status
git commit -am "commit"
git log --pretty=oneline
```

撤销修改

```
git status  #查看下此时git状态
git checkout让你能够恢复到以前的任何提交。命令git checkout .放弃自最后一次提交后所做的所有修改，将项目恢复到最后一次提交的状态
git checkout .
git status

```

检查以前的提交

```
git log --pretty=oneline
git checkout be017b
```

切换分支 前的代码最好全部提交，不要作任何更改

```
git checkout master
git status
git log --pretty=oneline
git reset --hard be017b
git status
git log --pretty=oneline


```

删除仓库

```
git status
rm -rf .git
git status
git init 
git status
git init
git add.
git commit -m ""
git status
```

分支操作

```
git branch 查看当前所在分支
git branch -a 查看项目所有分支
git branch -r 查看项目远程分支
git chectout -b dev 创建本地分支并切换到新创建的分支
git push origin HEAD -U 将新创建的分支信息推送到github
git branch -d 分支名称	删除本地的指定分支
git push orign --delete dev 删除远程分支
```

用户信息

```
git config user.name 查看本地名称
git config user.email 查看本地email
git config -a 查看本地所有配置

#查看当前用户配置
git config --global --list 

#查看系统用户配置
git config --system --list

```

