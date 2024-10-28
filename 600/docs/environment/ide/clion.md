# 1. Clion 中文乱码问题

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/code-snapshot.jvukxtc23pc.webp" width=80%/></center>

此时输出为：

> `浣犲ソ锛屼笘鐣岋紒`

可以发现，中文出现了乱码，下面就乱码问题进行配置。

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.418cttc78iw0.webp" width=80%/></center>

之后，将此处改为 GBK：

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.61c9epc07r80.webp"/></center>

然后会弹出个对话框，选择 <kbd>convert</kbd>：

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.3dh3j07e5ns0.webp"/></center>

然后，重新运行程序，可以看到编码正常了。