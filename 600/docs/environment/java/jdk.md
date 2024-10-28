操作系统：Windows10 教育版

**Java:Jdk-8u281-x64**

- 环境配置：首先打开控制面板，点击 ***\*高级系统设置\**** -> ***\*环境变量\**** ，进入环境变量配置界面

![img](https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/wps8B4E.tmp.png) 

​								![img](https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/wps8B4F.tmp.png) 

- 点击系统变量中的 ***\*新建\**** 按钮，如下图所示，新建两个系统变量。

​				变量名： ***\*JAVA_HOME\**** 

​				变量值：C:\Program Files\Java\jdk-13.0.1

​				变量名：***\*CLASSPATH\**** 

​				变量值：%JAVA_HOME%\lib;%JAVA_HOME%\lib\tools.jar

​				![img](https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/wps8B502121212.png) 

​				![img](https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/wps8B51212121.png) 

​				![img](https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/wps8B522121212121.png) 

- 再找到 Path 变量，没有则如上新建即可，点击 编辑 -> 新建 ，将以下变量值

​			 					%JAVA_HOME%\bin

​									%JAVA_HOME%\jre\bin 添加进去，之后，一直点击确定就可以了。

​																								![img](https://cdn.jsdelivr.net/gh/liuhuanhuan963019/blogPicture/md_photos/wps8B53.tmp.png) 

​				jdk的配置就已经完成了，怎么知道配置是否成功呢？按下键盘的 ***\*Windows+R\****键，键入***\*cmd\****，在cmd中输入 ***\*javac -version\**** 或者 ***\*javac\**** 出现如下界面所示信息，代表jdk的配置是成功的。

