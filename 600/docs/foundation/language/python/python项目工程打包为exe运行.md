### 1、安装**pyinstaller**

安装命令

```shell
pip install pyinstaller
```

### 2、pyinstaller打包单个文件

我们拿之前写过的一个基于tkinter的登录注册的案例来写

源码地址：https://blog.csdn.net/qq_38140292/article/details/121084703?spm=1001.2014.3001.5501

我们开始打包

注意：我们一定要进入到我们py文件的上一级父亲目录才可以的哦！！！

如图样子：

![image-20211117214121647](https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/image-20211117214121647.png)

输入如下命令：

```python
pyinstaller -F demo.py
```

出现如下，即可表示打包成功

![image-20211117214430266](https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/image-20211117214430266.png)

我们发现在我们的当前目录下，生成了两个目录文件`build`和`dist`

![image-20211117214523023](https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/image-20211117214523023.png)

我们进入dist后，会发现有个`demo.exe`。我们双击执行，即可看到与我们在工具中执行的效果是一样的。

<img src="https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/exe%E6%89%93%E5%8C%85%E5%8D%9A%E5%AE%A2.gif" alt="1" style="zoom: 33%;" />

此时，我们已经全部打包好了，我们只需要吧我们的这个exe文件发给别人，别人也可以直接运行了，但是我们在运行的时候，会弹出一个黑色的命令窗口，我此时可以重新设置打包。

执行命令如下：

```python
pyinstaller -F -w demo.py
```

具体效果的话，我就不再多家赘述了。

我们发现我们打包好最后的这个程序的默认图标有点丑，我们可以自己指定显示的ico。

如下图

```python
pyinstaller -F -w -i D:/favrite.ico demo.py
```

![image-20211117215415620](https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/image-20211117215415620.png)

此时发现我们的图标已经发生了一些改变了。

我们主要用到的命令就是如上3中，我们再统一汇总下：

* ```python
  pyinstaller -F demo.py
  ```

* ```python
  pyinstaller -F -w demo.py
  ```

* ```python
  pyinstaller -F -w -i D:/favrite.ico demo.py
  ```



### 3、多个py文件配置打包成一个exe文件（亲测有效）

