# 1. 什么是 CSS

CSS 的主要使用场景就是美化网页，布局页面的

将 HTML 的语义标签和样式设置分离，解耦合

CSS 主要由两部分组成：选择器以及一条或多条声明：

> 样式声明以键值对出现，分号结束一组键值对

CSS 有三种引入方式：

- 行内样式表

  适合于修改简单样式，样式表写在标签的 style 属性中，用双引号引起来

- 内部样式表

  在&lt;head&gt;标签内添加&lt;style&gt;标签，样式表就写在该标签内

- 外部样式表

  适合于样式比较多的情况，并且需要重用，需要用 &lt;link&gt; 标签引入：

  ```html
  <link rel="stylesheet" href="CSS文件路径">
  ```

# 2. CSS 代码风格

## 2.1 样式格式书写

- 紧凑格式

  ```css
  h3 {color:deeppink;font-size:20px}
  ```

- 展开格式

  ```css
  h3 {
      color:deeppink;
      font-size:20px
  }
  ```

> 一般用展开式

## 2.2 样式大小写风格

推荐用小写形式

```css
h3 {
    color: pinl;
}
```

## 2.3 样式空格风格

- 属性值前，冒号后面，保留一个空格
- 选择器和大括号之间保留一个空格

# 3. CSS 选择器

## 3.1 基本选择器

### 3.1.1 通用选择器

```css
* {
    font-size: 14px;
}
```

### 3.1.2 标签选择器

标签选择器（元素选择器）是指用 HTML 标签名称作为选择器，按标签名称分类，为页面中某一类标签指定统一的 CSS 样式。

```css
标签名 {
	属性1: 属性值1;
    属性2: 属性值2;
    ...
}
```

### 3.1.3 类选择器

类选择器采用全局属性 `class` 匹配指定类的元素。

```css
.类名 {
    属性1: 属性值1;
    属性2: 属性值2;
    ...
}
```

> [!NOTE]
>
> ① 类选择器使用 “.” （英文点号）进行标识，后面紧跟类名（自定义，我们自己命名的)；
>
> ② 可以理解为给这个标签起了一个别名来表示；
>
> ③ 长名称或词组可以使用中横线来为选择器命名；
>
> ④ 不要使用纯数字、中文等命名，尽量使用英文字母来表示；
>
> ⑤ 命名要有意义，尽量使别人一眼就知道这个类名的目的。

### 3.1.4 id 选择器

HTML 元素以 `id` 属性来设置 id 选择器，CSS 中 id 选择器以 “`#`” 来定义

```css
#id {
    属性1: 属性值1;
    属性2: 属性值2;
    ...
}
```

> [!TIP]
>
> `id ` 在 HTML 中是唯一标识符

### 3.1.5 属性选择器

属性选择器可以根据元素特定属性来选择元素，这样就可以不用借助于类或者 id 选择器

|   **选择符**    |                           **简介**                           |
| :-------------: | :----------------------------------------------------------: |
|     `[att]`     |                   选择具有 att 属性的元素                    |
|     `[att]`     |                  选择具有 att 属性的  元素                   |
|  `[att=“val”]`  |             选择具有 att 属性且值等于 val 的元素             |
| `[att^=“val”]`  |         选择具有 att 属性且值以 字符串val 开头的元素         |
| `[att$=“val”]`  |         选择具有 att 属性且值以字符串 val 结尾的元素         |
| `[att*=“val”]`  |          选择具有 att 属性且值含有字符串 val 的元素          |
| `[att~=“val”]`  |     选择具有 att 属性且多个属性值之一为字符串 val 的元素     |
| `[att\|=“val”]` | 选择具有 att 属性且属性值为连字符分割的多个值，其中第一个值为字符串 val 的元素 |

> [!ATTENTION]
>
> 可以在属性选择器前加上标签，这样可以限定在指定元素中匹配属性选择。

## 3.2 复合选择器

复合选择器是建立在基础选择器之上，对基本选择器进行组合形成的

- 复合选择器可以更准确、更高效的选择目标元素
- 复合选择器是由两个或多个基础选择器，通过不同方式组合而成的
- 常用的复合选择器包括：后代选择器、子选择器、并集选择器、伪类选择器等

### 3.2.1 并集选择器

并集选择器可以选择多组标签，同时为他们定义相同的样式。

```css
div,
p,
span {
    color: red;
}
```

### 3.2.2 后代选择器

后代选择器又称为包含选择器，可以选择父元素里面的元素。其写法就是把外层标签写前面，内层标签写在后面，中间用空格分隔。**当标签发生嵌套时，内层标签就成为外层标签的后代**。

```css
ol li {
    /* 修改的是 ol 里的所有 li 元素，不仅限于子元素的 li*/
}

div ol {
    /* 多层查找元素设置属性 */
}

.类名 子元素 孙元素 {
    /*
     * 后代选择器可以是任意基础选择器的组合
     */
}
```

### 3.2.3 子元素选择器

子元素选择器只能选择作为某元素的最近一级子元素

```css
元素1 > 元素2 {
    /* 这里定位的元素必须是元素1的子元素*/
}
```

### 3.2.4 兄弟选择器

使用相邻兄弟选择器（Adjacent sibling selector）可选择紧接在另一元素后的元素，且二者有相同父元素。

例如，如果要增加紧接在  `h1` 元素后出现的段落的上边距，可以这样写：

```css
h1 + p {
    margin-top: 50px;
}
```

> [!WARNING]
>
> 用一个结合符只能选择两个相邻兄弟中的第二个元素。

使用普通兄弟选择器选择范围会稍微宽松一些，它匹配的元素在指定元素之后,但不一定相邻。

```css
h1 ~ p {
    margin-top: 50px;
}
```

## 3.3 伪元素选择器

伪元素选择器可以帮助我们利用  CSS 创建新标签元素，而不需要 HTML 标签，从而简化 HTML 结构。伪元素实际上并不存在，它们是 CSS 提供的额外“福利”，为了方便你选中文档内容。

### 3.3.1 ::first-line 选择器

`::first-line` 选择器匹配文本块的首行。例如，假设我想选中 `p` 元素的首行，就可以指定 `p::first-line` 作为选择器。

```css
p::first-line {
    font-size: 2em;
}
```

> [!TIP]
>
> 如果浏览器窗口调整大小，浏览器会重新评估哪些内容属于文档的首行。这就意味着首行样式总是可以成功应用。

### 3.3.2 ::first-letter 选择器

显然，选择文本块的首字母，一般用来首字下沉等。

```css
p::first-letter {
    padding: 4px;
}
```

### 3.3.3 ::before 和 ::after 选择器

在元素内部的前面 / 后面插入内容，例如给段落首尾加上双引号。

```css
p::before {
    content: '"'
}

p::after {
    content: '"'
}
```

### 3.3.4 CSS 计数器

`::before` 和 `::after` 选择器经常跟 CSS 计数器特性一起使用，结合两者可生成数值内容。

- 创建计数器

  `counter-reset: 计数器名1 初始值1 计数器名2 初始值2`

  > 初始值默认是1。

- 递增变量

  `counter-increment: 计数器名 增加值 `

  > 增加的值默认为 1。

- 显示计数器的值

  `content: "prefix " counter(计数器名) " suffix"`

  > 计数器显示只是数字，可在前后加入在计数器前后需要显示的内容。

示例：

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>菜鸟教程(runoob.com)</title>
    <style>
        body {
            counter-reset: section;
        }

        h2::before {
            counter-increment: section;
            content: "Section " counter(section) ": ";
        }
    </style>
</head>
<body>

<h1>使用 CSS 计数器:</h1>
<h2>HTML 教程</h2>
<h2>CSS 教程</h2>
<h2>JavaScript 教程</h2>

<p><b>注意:</b> IE8 需要指定 !DOCTYPE 才可以支持该属性。</p>

</body>
</html>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.498ut7uyw4e0.webp" width=60%/></center>

## 3.4 结构性伪类选择器

### 3.4.0 预定义

```css
/* 这里预定义几个变量（自定义属性），方便后面使用 */
:root {
    --green: #1dd1a1;
    --red: #ff7979;
    --blue: #7ed6df;
    --yellow: #f9ca24;
    --border: 1px solid #666;
}

/* 预定义一个选择器 */
div {
    float: left;
    margin-left: 10px;
    width: 100px;
    height: 50px;
    border: var(--border);
    background-color: var(--green);
}
```

### 3.4.1 `:root `选择器

`:root` 选择器匹配文档中的根元素。它可能是用得最少的一个伪类选择器，因为总是返回 HTML 元素。

```css
:root {
    background-color: var(--blue);
}
```

```html
<body></body>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.613w3x2hux40.webp" width=30% /></center>

### 3.4.2 `:empty `选择器

> [!TIP]
>
> `:empty` 选择没有任何内容的元素(有空格也不行)。

```css
div:empty {
    background-color: var(--red);
}
```

```html
<div>    </div>
<div>1231</div>
<div>abc</div>
<div>*()_</div>
<div>...</div>
<div></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.3t7ye1fw2q20.webp" /></center>

### 3.4.3 `:target` 选择器

`:target` 表示一个唯一的元素（目标元素），其 ID 与 URL 的片段匹配。

```css
#first:target {
    background-color: var(--red);
}
#second:target {
    background-color: var(--blue);
}
#third:target {
    background-color: var(--yellow);
}
```

```html
<a href="#first">first</a>
<a href="#second">second</a>
<a href="#third">third</a>
<div id="first"></div>
<div id="second"></div>
<div id="third"></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/dddd.5rfiy1g6ne80.gif" /></center>

### 3.4.4 `:first-child` 选择器

`:first-child` 选择元素中的第一个**子元素**。

```css
div:first-child {
    background-color: var(--red);
}
```

```html
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.r8iqvorj3xs.webp" /></center>

> [!WARNING]
>
> 选中的元素的类型必须与冒号前选择器所确定的元素类型一致，否则元素类型不一致的选中元素样式设置不生效！

### 3.4.5 `:last-child` 选择器

`:last-child` 选择元素的最后一个子元素。

```css
div:last-child {
    background-color: var(--red);
}
```

```html
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.a7oiaewz7sc.webp"/></center>

> [!WARNING]
>
> 选中的元素的类型必须与冒号前选择器所确定的元素类型一致，否则元素类型不一致的选中元素样式设置不生效！

### 3.4.6 `:nth-child(n)` 选择器

`:nth-child(n)` 定位某个父元素的一个或多个特定的子元素。其中 `n` 是其参数。`n` 取值如下：

1. 整数值(`1` || `2 `|| `3` || `4` || ...)

   参数 `n` 的起始值为 `1`，不是 `0`，若要选中第一个元素 `nth-child(1)`。

2. 表达式(`2n+1` ||` -n+5 `|| ...)

   为表达式时，`n` 从 `0` 开始，表达式的值为 `0` 或小于 `0` 的时，不选择任何匹配的元素。

3. 关键词(`odd `|| `even`)

   `odd` 和 `even` 是可用于匹配下标是奇数(odd)或偶数(even)的子元素的关键词（第一个子素的下标是 `1`）。

```css
div:nth-child(2n) {
    background-color: var(--red);
}
```

```html
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.rxtqhe0ng00.webp"/></center>

> [!WARNING]
>
> 选中的元素的类型必须与冒号前选择器所确定的元素类型一致，否则元素类型不一致的选中元素样式设置不生效！

### 3.4.7 `:nth-last-child(n)` 选择器

`:nth-last-child(n)` 从某父元素的最后一个子元素开始选择特定的元素。`n` 取值同 `nth-child(n)` 的 `n` 取值。

```css
div:nth-last-child(2n) {
    background-color: var(--red);
}
```

```html
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.6woycop26m80.webp" /></center>

> [!WARNING]
>
> 选中的元素的类型必须与冒号前选择器所确定的元素类型一致，否则元素类型不一致的选中元素样式设置不生效！

### 3.4.8 `:first-of-type` 选择器

`:first-of-typr` 选择元素中的第一个相同类型的**子元素**。

```css
div:first-of-type{
    background-color: var(--red);
}
```

```html
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.r8iqvorj3xs.webp" /></center>

> [!WARNING]
>
> 只能对冒号前的类型做选择，排序也是去除其他类型后再排序确定 first、last、nth的。

### 3.4.9 `:last-of-type` 选择器

`:la:last-of-typest-child` 选择元素的最后一个相同类型的子元素。

```css
div:last-of-type {
    background-color: var(--red);
}
```

```html
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.a7oiaewz7sc.webp"/></center>

> [!WARNING]
>
> 只能对冒号前的类型做选择，排序也是去除其他类型后再排序确定 first、last、nth的。

### 3.4.10 `:nth-of-type(n)` 选择器

`:nth-of-type(n)` 定位某个父元素的一个或多个特定的相同类型的子元素。其中 `n` 是其参数。`n` 取值如下：

1. 整数值(`1` || `2 `|| `3` || `4` || ...)

   参数 `n` 的起始值为 `1`，不是 `0`，若要选中第一个相同类型的元素 `:nth-of-type(1)`。

2. 表达式(`2n+1` ||` -n+5 `|| ...)

   为表达式时，`n` 从 `0` 开始，表达式的值为 `0` 或小于 `0` 的时，不选择任何匹配的元素。

3. 关键词(`odd `|| `even`)

   `odd` 和 `even` 是可用于匹配下标是奇数(odd)或偶数(even)的子元素的关键词（第一个子素的下标是 `1`）。

```css
div:nth-of-type(2n) {
    background-color: var(--red);
}
```

```html
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.rxtqhe0ng00.webp"/></center>

> [!WARNING]
>
> 只能对冒号前的类型做选择，排序也是去除其他类型后再排序确定 first、last、nth的。

### 3.4.11 `:nth-last-of-type(n)` 选择器

`:nth-last-of-type(n)` 从某父元素的最后一个子元素开始选择特定的元素。`n` 取值同 `nth-child(n)` 的 `n` 取值。

```css
div:nth-last-of-type(2n) {
    background-color: var(--red);
}
```

```html
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.6woycop26m80.webp" /></center>

> [!WARNING]
>
> 只能对冒号前的类型做选择，排序也是去除其他类型后再排序确定 first、last、nth的。

### 3.4.12 `:not` 选择器

否定选择器可以对任意选择取反。这个选择器可谓相当实用，不过却常常被忽略。

```css
div {
    float: left;
    margin-left: 10px;
    width: 100px;
    height: 50px;
    border: var(--border);
    background-color: var(--green);
}

div:not(.item) {
    background-color: var(--red);
}
```

```html
<div class="item"></div>
<div class="item"></div>
<div class="item"></div>
<div class="item"></div>
<div class="diff"></div>
<div class="item"></div>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.520ljyr04xc0.webp" /></center>

## 3.5 UI 伪类选择器

### 3.5.1 选择启用或禁用元素

有些元素有启用或者禁用状态，这些元素一般是用来收集用户输入的。`:enabled` 和 `:disabled` 选择器不会匹配没有禁用状态的元素。

```css
:enabled {
    background-color: #11ff00;
}
:disabled {
    background-color: cyan;
}
```

```html
<textarea> This is an enabled textarea</textarea>
<textarea disabled> This is a disabled textarea</textarea>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.4zzcalxoakc0.webp" /></center>

### 3.5.2 选择已勾选的元素

使用 `:checked` 选择器可以选中由 `checked` 属性或者用户勾选的单选按钮或者复选框。

```css
:checked + span {
    background-color: red;
    color: white;
    padding: 5px;
    border: medium solid black;
}
```

```html
<form method="post">
    <p>
        <label for="apples">Do you like apples :</label>
        <input type="checkbox" id="apples" name="apples"/>
        <span>This will go red when checked</span>
    </p>
    <input type="submit" value="Submit"/>
</form>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.225rovnnhzi8.webp" /></center>

### 3.5.3 选择默认元素

`:default` 选择器用于在一组相关元素中选取默认表单元素。

`:default` 选择器可用于以下元素:

- `< button>`
- `<input type= "checkbox" >`
- `<input type="radio">`
- `<option>`

```css
input:default + label::after {
    content: '（推荐）';
}
```

```html
请选择支付方式：
<p>
    <input type="radio" name="pay" id="pay0" value="0"> <label for="pay0">支付宝</label>
</p>
<p>
    <input type="radio" name="pay" id="pay1" value="1" checked> <label for="pay1">微信</label>
</p>
<p>
    <input type="radio" name="pay" id="pay2" value="2"> <label for="pay2">银行卡</label>
</p>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.7k7931lqfy40.webp" /></center>

### 3.5.4 选择有效和无效的 input 元素

`:valid` 和 `:invalid` 选择器分别匹配符合和不符合它们的输入验证要求的 `input`元素。

```css
:invalid {
    outline: medium solid red;
}

:valid {
    outline: medium solid green;
}
```

```html
<p>
    <label for="name" >Name: <input required id="name" name=" name" /></label>
</p>
<p>
    <label for="name" >City: <input required id=" city" name="city" /></1abel>
</p>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.3cr06jczioo0.webp" /></center>

### 3.5.5 选择限定范围的 input 元素

`:in-range` 和 `out-of-range` 仅当  `input` 元素的值在范围内或者超出范围时时，才选择元素并设置样式。

```css
:in-range {
    outline: medium solid green;
}

:out-of-range {
    outline: medium solid red;
}
```

```html
<p>
    <label for="price1">
        范围内：<input type="number" min="0" max="100" value="25" id="price1" name="price1"/>
    </label> <br> <br>
    <label for="price2">
        范围外：<input type="number" min="0" max="100" value="123" id="price2" name="price2"/>
    </label>
</p>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.49mcfp6g43k0.webp"/></center>

### 3.5.6 选择必需和可选的 input 元素

`:required` 选择器匹配具有 `required` 属性的 `input` 元素，这能够确保用户必需输入与 `input` 元素相关的值才能提交表单。`:optional` 选择器匹配没有 `required` 属性的 `input` 元素。

```css
:required {
    outline: medium solid green;
}

:optional {
    outline: medium solid red;
}
```

```html
<p>
    <label for="id1">
        Required：<input required id="id1"/>
    </label>
</p>
<p>
    <label for="id2">
        Optional：<input id="id2"/>
    </label>
</p>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.7f5onejtsvs0.webp" /></center>

## 3.6 动态伪类选择器

### 3.6.1 `:link `选择器和` :visited` 选择器

`:link` 匹配超链接，`:visited` 匹配已访问的超链接

```css
:link {
    color: red;
}

:visited {
    color: cyan;
}
```

```html
<p>访问前：<a href="#1">超链接</a></p>
<p>访问后：<a href="#2">超链接</a></p>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.7e5g75w3e9s0.webp" /></center>

### 3.6.2 `:hover` 选择器

`:hover` 选择器匹配用户鼠标悬停在其上的任意元素。鼠标在 HTML 页面内移动时，选中的元素样式会发生改变。

```css
a:hover {
    background-color: #11ff00;
}
```

```html
<p>默认：<a href="#1">超链接</a></p>
<p>悬停：<a href="#2">超链接</a></p>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.7d0s8i30y0o0.webp" /></center>

### 3.6.3 `:active` 选择器

`:active` 选择器匹配当前被用户激活的元素。浏览器依然可以自行决定如何诠释激活，但多数浏览器会在鼠标点击(在触摸屏上是手指按压)的情况下使用这个选择器。

```css
input:active {
    background-color: #11ff00;
}
```

```html
<p>默认：<input type="button" value="Submit"></p>
<p>激活：<input type="button" value="Submit"></p>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.c1y3dql906o.webp" /></center>

### 3.6.4 `:focus` 选择器

它匹配当前获得焦点的元素。

```css
input:focus {
    background-color: #11ff00;
}
```

```html
<p>默认：<input type="text"></p>
<p>激活：<input type="text" autofocus></p>
```

<center><img src="https://cdn.jsdelivr.net/gh/dreaming-coder/image-hosting@master/image.1lykepaozoow.webp" /></center>
