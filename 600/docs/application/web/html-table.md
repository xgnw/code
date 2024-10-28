# 1. 基本表格结构

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/code-snapshot.6ixvkvc3jqk0.webp" width=70% /></center>

其样式如下所示：

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.260i6g25kwdc.webp" width=80% /></center>

# 2. 处理列

HTML 中的表格是基于行的。单元格的定义都要放在 `tr` 元素中，而表格则是一行一行地组建出来的。因此对列应用样式有点不方便，对于包含不规则单元格的表格更是如此。这个问题的解决办法是使用 `colgroup` 和 `col` 元素。`colgroup` 代表一组列。 

例如一个 $4\times 5$ 的表格，有 $4$ 行 $5$ 列，我们可以通过 `colgroup` 来对列进行分组。

```html
<colgroup span="2"/>  <!--前两列-->
<colgroup span="2"/>  <!--三四列-->
<colgroup span="1"/>  <!--第五列-->
```

或者有一种等价方式：

```html
<colgroup>
	<col span="2" />
	<col span="2" />
	<col span="1" />
</colgroup>
```

> [!ATTENTION]
>
> 不规则单元格计入其起始列。

# 