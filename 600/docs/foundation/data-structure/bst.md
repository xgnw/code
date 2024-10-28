# 1. 二叉搜索树的定义

<center><svg id="SvgjsSvg1006" width="338.73614501953125" height="356.56597900390625" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><defs id="SvgjsDefs1007"></defs><g id="SvgjsG1008" transform="translate(148.44143731253507,25.00347900390625)"><path id="SvgjsPath1009" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1010"><text id="SvgjsText1011" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1012" dy="18" x="21"><tspan id="SvgjsTspan1013" style="text-decoration:;">8</tspan></tspan></text></g></g><g id="SvgjsG1014" transform="translate(75.94143731253484,120.90824090866815)"><path id="SvgjsPath1015" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1016"><text id="SvgjsText1017" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1018" dy="18" x="21"><tspan id="SvgjsTspan1019" style="text-decoration:;">3</tspan></tspan></text></g></g><g id="SvgjsG1020" transform="translate(213.13191350301122,120.90824090866815)"><path id="SvgjsPath1021" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1022"><text id="SvgjsText1023" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1024" dy="18" x="21"><tspan id="SvgjsTspan1025" style="text-decoration:;">10</tspan></tspan></text></g></g><g id="SvgjsG1026" transform="translate(25.005923134940076,203.57923657966262)"><path id="SvgjsPath1027" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1028"><text id="SvgjsText1029" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1030" dy="18" x="21"><tspan id="SvgjsTspan1031" style="text-decoration:;">1</tspan></tspan></text></g></g><g id="SvgjsG1032" transform="translate(117.94143731253484,203.57923657966262)"><path id="SvgjsPath1033" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1034"><text id="SvgjsText1035" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1036" dy="18" x="21"><tspan id="SvgjsTspan1037" style="text-decoration:;">6</tspan></tspan></text></g></g><g id="SvgjsG1038" transform="translate(161.13191350301122,289.5792365796626)"><path id="SvgjsPath1039" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1040"><text id="SvgjsText1041" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1042" dy="18" x="21"><tspan id="SvgjsTspan1043" style="text-decoration:;">7</tspan></tspan></text></g></g><g id="SvgjsG1044"><path id="SvgjsPath1045" d="M97.65012115411855 120.20271471306785L155.73275347095137 62.37887818058435" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1046"><path id="SvgjsPath1047" d="M233.51853621136013 120.11845087449021L186.41462413367606 59.4670364251419" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1048"><path id="SvgjsPath1049" d="M46.60677693484877 202.7798776420537L81.15358873572086 156.81977423068076" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1050"><path id="SvgjsPath1051" d="M138.41600168411503 202.7284032232484L110.90874744237965 158.18614497817794" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1052"><path id="SvgjsPath1053" d="M181.63106105384566 288.71370389734216L153.60621133570362 240.2834259011339" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1054" transform="translate(76.94143731253484,289.5792365796626)"><path id="SvgjsPath1055" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1056"><text id="SvgjsText1057" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1058" dy="18" x="21"><tspan id="SvgjsTspan1059" style="text-decoration:;">4</tspan></tspan></text></g></g><g id="SvgjsG1060"><path id="SvgjsPath1061" d="M126.99113820089792 243.27364024621704L98.47286549598994 288.732133229516" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1062" transform="translate(271.7472981183961,212.04077504120107)"><path id="SvgjsPath1063" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1064"><text id="SvgjsText1065" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1066" dy="18" x="21"><tspan id="SvgjsTspan1067" style="text-decoration:;">14</tspan></tspan></text></g></g><g id="SvgjsG1068" transform="translate(235.3626827337805,289.5792365796626)"><path id="SvgjsPath1069" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1070"><text id="SvgjsText1071" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1072" dy="18" x="21"><tspan id="SvgjsTspan1073" style="text-decoration:;">13</tspan></tspan></text></g></g><g id="SvgjsG1074"><path id="SvgjsPath1075" d="M248.29164698747968 158.44169829142595L292.1088972746437 211.2710709664449" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1076"><path id="SvgjsPath1077" d="M281.95921517531065 251.8065053024945L256.9236593615327 288.7514049403084" stroke="#323232" stroke-width="2" fill="none"></path></g></svg></center>

二叉搜索树或者是一棵空树，或者是具有下列特性的二叉树：

- 若左子树非空，则左子树上所有结点的值均小于根结点的值
- 若右子树非空，则右子树上所有结点的值均大于根结点的值
- 左右子树也分别是一棵二叉搜索树

> 所以对二叉树进行中序遍历，可以得到一个递增的一个有序序列。

# 2. 二叉搜索树结点类的定义

```java
private static class Node implements Comparable<Node> {
    public int data;
    public Node left;
    public Node right;

    public Node(int data) {
        this(data, null, null);
    }

    public Node(int data, Node left, Node right) {
        this.data = data;
        this.left = left;
        this.right = right;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Node.class.getSimpleName() + "[", "]")
            .add("data=" + data)
            .toString();
    }

    @Override
    public int compareTo(Node node) {
        return data - node.data;
    }
}
```

# 3. 二叉搜索树的判定

- 迭代判断

```java
public static boolean isBinarySearchTree1(Node root) {

    if (root == null) return false;
    Deque<Node> deque = new LinkedList<>();
    Integer pre = null;
    Node node = root;
    while (node != null || !deque.isEmpty()) {
        while (node != null) {
            deque.push(node);
            node = node.left;
        }
        node = deque.pop();
        if (pre != null && node.data < pre) {
            return false;
        }
        pre = node.data;
        node = node.right;
    }
    return true;
}
```

- 递归判断

```java
public static boolean isBinarySearchTree(Node root) {
    return isBinarySearchTree(root, Long.MIN_VALUE, Long.MAX_VALUE);
}

private static boolean isBinarySearchTree(Node node, long lower, long upper) {
    if (node == null) return true;
    if (node.data <= lower || node.data >= upper) return false;
    return isBinarySearchTree(node.left, lower, node.data) && isBinarySearchTree(node.right, node.data, upper);
}
```

# 4. 二叉搜索树的遍历

中序遍历就是按照从小到大的顺序遍历：

```java
public void inOrder(Consumer<Node> consumer) {
    if (root == null) return;
    Node node = root;
    Deque<Node> deque = new ArrayDeque<>();
    while (node != null || !deque.isEmpty()) {
        while (node != null) {
            deque.push(node);
            node = node.left;
        }
        node = deque.pop();
        consumer.accept(node);
        node = node.right;
    }
}
```

# 5. 二叉搜索树的查找

就是在这种结构中查询某个元素是否在其中，递归算法比较简单，这里给出迭代算法

```java
public Node search(int key) {
    Node node = root;
    while (node != null && node.data != key) {
        node = key < node.data ? node.left : node.right;
    }
    return node;
}
```

# 6. 二叉搜索树结点的前驱与后继

```java
// 查找以该结点为根的左子树中的最大结点
public static Node predecessor(Node node) {
    if (node.left == null) {
        return null;
    }
    node = node.left;
    while (node.right != null) {
        node = node.right;
    }
    return node;
}

// 查找以该结点为根的右子树中的最小结点
public static Node successor(Node node) {
    if (node.right == null) {
        return null;
    }
    node = node.right;
    while (node.left != null) {
        node = node.left;
    }
    return node;
}
```

# 7. 二叉搜索树的插入

二叉排序树作为一种动态树表，其特点是树的结构通常不是一次生成的，而是在查找过程中，当树中不存在关键字值等于给定值的结点时再进行插入的。

插入结点的过程如下：若原二叉排序树为空，则直接插入结点；否则，若关键字 $k$ 小于根结点值，则插入到左子树，若关键字 $k$ 大于根结点值，则插入到右子树。插入的结点一定是一个新添加的叶结点，且是查找失败时的查找路径上访问的最后一个结点的左孩子或右孩子。

<center><svg id="SvgjsSvg1290" width="991.3923950195312" height="350.8715515136719" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><defs id="SvgjsDefs1291"><marker id="SvgjsMarker1306" markerWidth="14" markerHeight="10" refX="10" refY="5" viewBox="0 0 14 10" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1307" d="M0,0 L14,5 L0,10 L0,0" fill="#f57f17" stroke="#f57f17" stroke-width="1"></path></marker><marker id="SvgjsMarker1342" markerWidth="14" markerHeight="10" refX="10" refY="5" viewBox="0 0 14 10" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1343" d="M0,0 L14,5 L0,10 L0,0" fill="#f57f17" stroke="#f57f17" stroke-width="1"></path></marker><marker id="SvgjsMarker1350" markerWidth="14" markerHeight="10" refX="10" refY="5" viewBox="0 0 14 10" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1351" d="M0,0 L14,5 L0,10 L0,0" fill="#f57f17" stroke="#f57f17" stroke-width="1"></path></marker><marker id="SvgjsMarker1366" markerWidth="14" markerHeight="10" refX="10" refY="5" viewBox="0 0 14 10" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1367" d="M0,0 L14,5 L0,10 L0,0" fill="#f57f17" stroke="#f57f17" stroke-width="1"></path></marker><marker id="SvgjsMarker1404" markerWidth="14" markerHeight="10" refX="10" refY="5" viewBox="0 0 14 10" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1405" d="M0,0 L14,5 L0,10 L0,0" fill="#f57f17" stroke="#f57f17" stroke-width="1"></path></marker><marker id="SvgjsMarker1450" markerWidth="14" markerHeight="10" refX="10" refY="5" viewBox="0 0 14 10" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1451" d="M0,0 L14,5 L0,10 L0,0" fill="#f57f17" stroke="#f57f17" stroke-width="1"></path></marker></defs><g id="SvgjsG1292" transform="translate(92.74702380952291,54.29104213521785)"><path id="SvgjsPath1293" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1294"><text id="SvgjsText1295" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"></text></g></g><g id="SvgjsG1296"><path id="SvgjsPath1297" d="M80.2121649848091 103.87498982747397L147.9899427625869 47.20832316080731" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1298" transform="translate(316.39045125971495,54.541656494140625)"><path id="SvgjsPath1299" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1300"><text id="SvgjsText1301" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1302" dy="18" x="21"><tspan id="SvgjsTspan1303" style="text-decoration:;">10</tspan></tspan></text></g></g><g id="SvgjsG1304"><path id="SvgjsPath1305" d="M163.85686367781767 75.59025065104157L300.52353034448413 75.59025065104157" stroke-dasharray="10,5,3,5" stroke="#f57f17" stroke-width="2" fill="none" marker-end="url(#SvgjsMarker1306)"></path><rect id="SvgjsRect1308" width="57" height="20" x="203.6901970111509" y="65.59025065104157" fill="#ffffff"></rect><text id="SvgjsText1309" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="57px" fill="#323232" font-weight="700" align="top" lineHeight="20px" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="63.59025065104157" transform="rotate(0)"><tspan id="SvgjsTspan1310" dy="20" x="232.1901970111509"><tspan id="SvgjsTspan1311" style="text-decoration:;">插入 10</tspan></tspan></text></g><g id="SvgjsG1312" transform="translate(575.6798486457325,27.733575686057506)"><path id="SvgjsPath1313" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1314"><text id="SvgjsText1315" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1316" dy="18" x="21"><tspan id="SvgjsTspan1317" style="text-decoration:;">10</tspan></tspan></text></g></g><g id="SvgjsG1318" transform="translate(526.7909597568429,82.17802013050198)"><path id="SvgjsPath1319" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1320"><text id="SvgjsText1321" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1322" dy="18" x="21"><tspan id="SvgjsTspan1323" style="text-decoration:;">5</tspan></tspan></text></g></g><g id="SvgjsG1324"><path id="SvgjsPath1325" d="M579.854720019486 63.38581780999402L562.294167521869 87.32054567617064" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1326" transform="translate(829.9692460317497,25.016403968885058)"><path id="SvgjsPath1327" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1328"><text id="SvgjsText1329" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1330" dy="18" x="21"><tspan id="SvgjsTspan1331" style="text-decoration:;">10</tspan></tspan></text></g></g><g id="SvgjsG1332" transform="translate(786.0803571428605,84.89519184767443)"><path id="SvgjsPath1333" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1334"><text id="SvgjsText1335" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1336" dy="18" x="21"><tspan id="SvgjsTspan1337" style="text-decoration:;">5</tspan></tspan></text></g></g><g id="SvgjsG1338"><path id="SvgjsPath1339" d="M834.3301666067332 60.77647190592225L821.3975157066565 89.92989158024241" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1340"><path id="SvgjsPath1341" d="M374.2573721749457 75.59025065104134L510.9240388416122 75.59025065104134" stroke-dasharray="10,5,3,5" stroke="#f57f17" stroke-width="2" fill="none" marker-end="url(#SvgjsMarker1342)"></path><rect id="SvgjsRect1344" width="47" height="20" x="419.0907055082789" y="65.59025065104134" fill="#ffffff"></rect><text id="SvgjsText1345" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="47px" fill="#323232" font-weight="700" align="top" lineHeight="20px" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="63.590250651041345" transform="rotate(0)"><tspan id="SvgjsTspan1346" dy="20" x="442.5907055082789"><tspan id="SvgjsTspan1347" style="text-decoration:;">插入 5</tspan></tspan></text></g><g id="SvgjsG1348"><path id="SvgjsPath1349" d="M633.5467695609632 75.92358398437455L770.2134362276297 75.92358398437455" stroke-dasharray="10,5,3,5" stroke="#f57f17" stroke-width="2" fill="none" marker-end="url(#SvgjsMarker1350)"></path><rect id="SvgjsRect1352" width="57" height="20" x="673.3801028942964" y="65.92358398437455" fill="#ffffff"></rect><text id="SvgjsText1353" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="57px" fill="#323232" font-weight="700" align="top" lineHeight="20px" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="63.923583984374545" transform="rotate(0)"><tspan id="SvgjsTspan1354" dy="20" x="701.8801028942964"><tspan id="SvgjsTspan1355" style="text-decoration:;">插入 15</tspan></tspan></text></g><g id="SvgjsG1356" transform="translate(876.9692460317498,84.89519184767443)"><path id="SvgjsPath1357" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1358"><text id="SvgjsText1359" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1360" dy="18" x="21"><tspan id="SvgjsTspan1361" style="text-decoration:;">15</tspan></tspan></text></g></g><g id="SvgjsG1362"><path id="SvgjsPath1363" d="M866.6943854894254 60.88369323603979L883.6346262161685 89.7671463676686" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1364"><path id="SvgjsPath1365" d="M25.00065452749081 242.16541404973412L140.43001860574958 242.16541404973412" stroke-dasharray="10,5,3,5" stroke="#f57f17" stroke-width="2" fill="none" marker-end="url(#SvgjsMarker1366)"></path><rect id="SvgjsRect1368" width="47" height="20" x="59.215336566620195" y="232.16541404973412" fill="#ffffff"></rect><text id="SvgjsText1369" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="47px" fill="#323232" font-weight="700" align="top" lineHeight="20px" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="230.16541404973412" transform="rotate(0)"><tspan id="SvgjsTspan1370" dy="20" x="82.7153365666202"><tspan id="SvgjsTspan1371" style="text-decoration:;">插入 6</tspan></tspan></text></g><g id="SvgjsG1372" transform="translate(221.8193500935538,158.00986802117262)"><path id="SvgjsPath1373" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1374"><text id="SvgjsText1375" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1376" dy="18" x="21"><tspan id="SvgjsTspan1377" style="text-decoration:;">10</tspan></tspan></text></g></g><g id="SvgjsG1378" transform="translate(177.9304612046646,217.8886558999622)"><path id="SvgjsPath1379" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1380"><text id="SvgjsText1381" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1382" dy="18" x="21"><tspan id="SvgjsTspan1383" style="text-decoration:;">5</tspan></tspan></text></g></g><g id="SvgjsG1384"><path id="SvgjsPath1385" d="M226.18027066853733 193.76993595821L213.2476197684606 222.92335563253016" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1386" transform="translate(268.819350093554,217.8886558999622)"><path id="SvgjsPath1387" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1388"><text id="SvgjsText1389" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1390" dy="18" x="21"><tspan id="SvgjsTspan1391" style="text-decoration:;">15</tspan></tspan></text></g></g><g id="SvgjsG1392"><path id="SvgjsPath1393" d="M258.5444895512297 193.87715728832745L275.4847302779727 222.76061041995638" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1394" transform="translate(221.8193500935538,283.88865589996215)"><path id="SvgjsPath1395" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1396"><text id="SvgjsText1397" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1398" dy="18" x="21"><tspan id="SvgjsTspan1399" style="text-decoration:;">6</tspan></tspan></text></g></g><g id="SvgjsG1400"><path id="SvgjsPath1401" d="M213.78661360074557 255.34164187906202L229.85650013339864 287.1735756686498" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1402"><path id="SvgjsPath1403" d="M331.65312602580235 241.54041404973412L447.08249010406126 241.54041404973412" stroke-dasharray="10,5,3,5" stroke="#f57f17" stroke-width="2" fill="none" marker-end="url(#SvgjsMarker1404)"></path><rect id="SvgjsRect1406" width="47" height="20" x="365.8678080649318" y="231.54041404973412" fill="#ffffff"></rect><text id="SvgjsText1407" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="47px" fill="#323232" font-weight="700" align="top" lineHeight="20px" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="229.54041404973412" transform="rotate(0)"><tspan id="SvgjsTspan1408" dy="20" x="389.3678080649318"><tspan id="SvgjsTspan1409" style="text-decoration:;">插入 4</tspan></tspan></text></g><g id="SvgjsG1410" transform="translate(525.2773771474203,158.0098680211726)"><path id="SvgjsPath1411" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1412"><text id="SvgjsText1413" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1414" dy="18" x="21"><tspan id="SvgjsTspan1415" style="text-decoration:;">10</tspan></tspan></text></g></g><g id="SvgjsG1416" transform="translate(481.38848825853165,217.88865589996215)"><path id="SvgjsPath1417" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1418"><text id="SvgjsText1419" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1420" dy="18" x="21"><tspan id="SvgjsTspan1421" style="text-decoration:;">5</tspan></tspan></text></g></g><g id="SvgjsG1422"><path id="SvgjsPath1423" d="M529.638297722404 193.76993595821L516.7056468223271 222.9233556325301" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1424" transform="translate(572.2773771474206,217.88865589996215)"><path id="SvgjsPath1425" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1426"><text id="SvgjsText1427" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1428" dy="18" x="21"><tspan id="SvgjsTspan1429" style="text-decoration:;">15</tspan></tspan></text></g></g><g id="SvgjsG1430"><path id="SvgjsPath1431" d="M562.0025166050962 193.87715728832757L578.9427573318392 222.76061041995632" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1432" transform="translate(525.2773771474203,283.88865589996215)"><path id="SvgjsPath1433" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1434"><text id="SvgjsText1435" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1436" dy="18" x="21"><tspan id="SvgjsTspan1437" style="text-decoration:;">6</tspan></tspan></text></g></g><g id="SvgjsG1438"><path id="SvgjsPath1439" d="M517.2446406546122 255.34164187906197L533.3145271872653 287.17357566864973" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1440" transform="translate(444.5829327029762,283.88865589996215)"><path id="SvgjsPath1441" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1442"><text id="SvgjsText1443" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1444" dy="18" x="21"><tspan id="SvgjsTspan1445" style="text-decoration:;">4</tspan></tspan></text></g></g><g id="SvgjsG1446"><path id="SvgjsPath1447" d="M489.06546800624164 256.5269376094989L476.96564322426707 286.11599270144393" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1448"><path id="SvgjsPath1449" d="M645.1111530796688 242.04041404973407L760.5405171579278 242.04041404973407" stroke-dasharray="10,5,3,5" stroke="#f57f17" stroke-width="2" fill="none" marker-end="url(#SvgjsMarker1450)"></path><rect id="SvgjsRect1452" width="57" height="20" x="674.3258351187983" y="232.04041404973407" fill="#ffffff"></rect><text id="SvgjsText1453" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="57px" fill="#323232" font-weight="700" align="top" lineHeight="20px" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="230.04041404973407" transform="rotate(0)"><tspan id="SvgjsTspan1454" dy="20" x="702.8258351187983"><tspan id="SvgjsTspan1455" style="text-decoration:;">插入 16</tspan></tspan></text></g><g id="SvgjsG1456" transform="translate(835.4020708679542,158.0098680211727)"><path id="SvgjsPath1457" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1458"><text id="SvgjsText1459" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1460" dy="18" x="21"><tspan id="SvgjsTspan1461" style="text-decoration:;">10</tspan></tspan></text></g></g><g id="SvgjsG1462" transform="translate(791.5131819790653,217.88865589996198)"><path id="SvgjsPath1463" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1464"><text id="SvgjsText1465" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1466" dy="18" x="21"><tspan id="SvgjsTspan1467" style="text-decoration:;">5</tspan></tspan></text></g></g><g id="SvgjsG1468"><path id="SvgjsPath1469" d="M839.7629914429377 193.76993595820989L826.830340542861 222.92335563252993" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1470" transform="translate(882.4020708679543,217.88865589996198)"><path id="SvgjsPath1471" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1472"><text id="SvgjsText1473" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1474" dy="18" x="21"><tspan id="SvgjsTspan1475" style="text-decoration:;">15</tspan></tspan></text></g></g><g id="SvgjsG1476"><path id="SvgjsPath1477" d="M872.1272103256299 193.87715728832745L889.067451052373 222.76061041995615" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1478" transform="translate(835.4020708679542,283.888655899962)"><path id="SvgjsPath1479" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1480"><text id="SvgjsText1481" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1482" dy="18" x="21"><tspan id="SvgjsTspan1483" style="text-decoration:;">6</tspan></tspan></text></g></g><g id="SvgjsG1484"><path id="SvgjsPath1485" d="M827.369334375146 255.3416418790618L843.439220907799 287.17357566864956" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1486" transform="translate(754.7076264235096,283.888655899962)"><path id="SvgjsPath1487" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1488"><text id="SvgjsText1489" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1490" dy="18" x="21"><tspan id="SvgjsTspan1491" style="text-decoration:;">4</tspan></tspan></text></g></g><g id="SvgjsG1492"><path id="SvgjsPath1493" d="M799.1901617267753 256.5269376094987L787.0903369448007 286.11599270144376" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1494" transform="translate(924.4020708679544,283.88865589996203)"><path id="SvgjsPath1495" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1496"><text id="SvgjsText1497" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1498" dy="18" x="21"><tspan id="SvgjsTspan1499" style="text-decoration:;">16</tspan></tspan></text></g></g><g id="SvgjsG1500"><path id="SvgjsPath1501" d="M917.6557411544571 255.43351297922123L932.9261724499291 286.6863735729572" stroke="#323232" stroke-width="2" fill="none"></path></g></svg></center>

```java
public void insert(int key) {
    Node newNode = new Node(key);
    if (root == null) {
        root = newNode;
        return;
    }
    Node parent = null;
    Node node = root;
    while (node != null) {
        // 元素已经存在，则插入失败
        if (node.compareTo(newNode) == 0) {
            return;
        }
        parent = node;
        node = node.compareTo(newNode) > 0 ? node.left : node.right;
    }
    if (parent.compareTo(newNode) > 0) {
        parent.left = newNode;
    } else {
        parent.right = newNode;
    }
}
```

# 8. 二叉搜索树的删除

被删除的结点有三种情况：

- 若被删除的结点是叶结点，则直接删除
- 若被删除的结点只有一颗左子树或右子树，则将它的子树的根结点直接移动到被删除结点的位置
- 若被删除的节点有两个子树，则用它的直接后继（或前驱）替代它，并将替代的结点删除

具体参照示例如下图所示：

<center>
<svg id="SvgjsSvg1006" width="980.4896850585938" height="1041.3924255371094" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><defs id="SvgjsDefs1007"><marker id="SvgjsMarker1072" markerWidth="14" markerHeight="10" refX="10" refY="5" viewBox="0 0 14 10" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1073" d="M0,0 L14,5 L0,10 L0,0" fill="#323232" stroke="#323232" stroke-width="1"></path></marker><marker id="SvgjsMarker1208" markerWidth="14" markerHeight="10" refX="10" refY="5" viewBox="0 0 14 10" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1209" d="M0,0 L14,5 L0,10 L0,0" fill="#323232" stroke="#323232" stroke-width="1"></path></marker><marker id="SvgjsMarker1414" markerWidth="14" markerHeight="10" refX="10" refY="5" viewBox="0 0 14 10" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1415" d="M0,0 L14,5 L0,10 L0,0" fill="#323232" stroke="#323232" stroke-width="1"></path></marker><marker id="SvgjsMarker1440" markerWidth="12" markerHeight="8" refX="9" refY="4" viewBox="0 0 12 8" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1441" d="M0,0 L12,4 L0,8 L0,0" fill="#323232" stroke="#323232" stroke-width="1"></path></marker><marker id="SvgjsMarker1444" markerWidth="12" markerHeight="8" refX="9" refY="4" viewBox="0 0 12 8" orient="auto" markerUnits="userSpaceOnUse" stroke-dasharray="0,0"><path id="SvgjsPath1445" d="M0,0 L12,4 L0,8 L0,0" fill="#323232" stroke="#323232" stroke-width="1"></path></marker></defs><g id="SvgjsG1008" transform="translate(179.13347425731675,25.013666072486657)"><path id="SvgjsPath1009" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1010"><text id="SvgjsText1011" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1012" dy="18" x="21"><tspan id="SvgjsTspan1013" style="text-decoration:;">53</tspan></tspan></text></g></g><g id="SvgjsG1014" transform="translate(85.74736314620547,91.51745395127594)"><path id="SvgjsPath1015" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1016"><text id="SvgjsText1017" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1018" dy="18" x="21"><tspan id="SvgjsTspan1019" style="text-decoration:;">17</tspan></tspan></text></g></g><g id="SvgjsG1020"><path id="SvgjsPath1021" d="M183.0403812792162 60.370753324006245L121.51853526308531 96.9551343693615" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1022" transform="translate(267.96402981287156,91.51745395127594)"><path id="SvgjsPath1023" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1024"><text id="SvgjsText1025" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1026" dy="18" x="21"><tspan id="SvgjsTspan1027" style="text-decoration:;">78</tspan></tspan></text></g></g><g id="SvgjsG1028"><path id="SvgjsPath1029" d="M216.20153402644195 60.54703469680814L274.2864896858406 96.7233291141034" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1030" transform="translate(146.48625203509445,176.17045454545462)"><path id="SvgjsPath1031" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1032"><text id="SvgjsText1033" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1034" dy="18" x="21"><tspan id="SvgjsTspan1035" style="text-decoration:;">45</tspan></tspan></text></g></g><g id="SvgjsG1036"><path id="SvgjsPath1037" d="M120.8742116540526 129.54118235818146L154.41678165172698 179.5177462131463" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1038" transform="translate(25.00847425731648,176.17045454545462)"><path id="SvgjsPath1039" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1040"><text id="SvgjsText1041" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1042" dy="18" x="21"><tspan id="SvgjsTspan1043" style="text-decoration:;">09</tspan></tspan></text></g></g><g id="SvgjsG1044"><path id="SvgjsPath1045" d="M91.78523687279109 128.8052346196121L57.579666545716975 178.49966355900602" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1046" transform="translate(328.7029187017605,176.17045454545462)"><path id="SvgjsPath1047" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1048"><text id="SvgjsText1049" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1050" dy="18" x="21"><tspan id="SvgjsTspan1051" style="text-decoration:;">87</tspan></tspan></text></g></g><g id="SvgjsG1052"><path id="SvgjsPath1053" d="M303.3380327443979 128.99276592514593L337.1066876387117 179.0377173238391" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1054" transform="translate(207.2251409239833,176.17045454545462)"><path id="SvgjsPath1055" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1056"><text id="SvgjsText1057" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1058" dy="18" x="21"><tspan id="SvgjsTspan1059" style="text-decoration:;">65</tspan></tspan></text></g></g><g id="SvgjsG1060" transform="translate(85.7473631462055,260.48389642888776)"><path id="SvgjsPath1061" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1062"><text id="SvgjsText1063" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1064" dy="18" x="21"><tspan id="SvgjsTspan1065" style="text-decoration:;">23</tspan></tspan></text></g></g><g id="SvgjsG1066"><path id="SvgjsPath1067" d="M154.39842677939828 214.9380714350569L117.2535886414542 262.5258283646482" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1068"><path id="SvgjsPath1069" d="M275.37676909707625 129.64748670987527L245.01323597586736 183.13090387676218" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1070"><path id="SvgjsPath1071" d="M200.09940962357948 147.55365545099428L176.463045987216 177.55365545099428" stroke="#323232" stroke-width="2" fill="none" marker-end="url(#SvgjsMarker1072)"></path></g><g id="SvgjsG1074" transform="translate(163.7698378936805,118.46274636008522)"><path id="SvgjsPath1075" d="M 0 0L 72.72727272727275 0L 72.72727272727275 25.454545454545453L 0 25.454545454545453Z" stroke="none" fill="none"></path><g id="SvgjsG1076"><text id="SvgjsText1077" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="73px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="0.7272727272727266" transform="rotate(0)"><tspan id="SvgjsTspan1078" dy="20" x="36.5"><tspan id="SvgjsTspan1079" style="text-decoration:;">删除45</tspan></tspan></text></g></g><g id="SvgjsG1080" transform="translate(755.1031712270144,59.55912061794123)"><path id="SvgjsPath1081" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1082"><text id="SvgjsText1083" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1084" dy="18" x="21"><tspan id="SvgjsTspan1085" style="text-decoration:;">53</tspan></tspan></text></g></g><g id="SvgjsG1086" transform="translate(661.7170601159032,126.06290849673053)"><path id="SvgjsPath1087" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1088"><text id="SvgjsText1089" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1090" dy="18" x="21"><tspan id="SvgjsTspan1091" style="text-decoration:;">17</tspan></tspan></text></g></g><g id="SvgjsG1092"><path id="SvgjsPath1093" d="M759.0100782489138 94.91620786946083L697.488232232783 131.50058891481615" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1094" transform="translate(843.9337267825694,126.06290849673053)"><path id="SvgjsPath1095" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1096"><text id="SvgjsText1097" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1098" dy="18" x="21"><tspan id="SvgjsTspan1099" style="text-decoration:;">78</tspan></tspan></text></g></g><g id="SvgjsG1100"><path id="SvgjsPath1101" d="M792.1712309961397 95.0924892422627L850.2561866555384 131.26878365955804" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1102" transform="translate(722.4559490047922,210.7159090909092)"><path id="SvgjsPath1103" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1104"><text id="SvgjsText1105" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1106" dy="18" x="21"><tspan id="SvgjsTspan1107" style="text-decoration:;">23</tspan></tspan></text></g></g><g id="SvgjsG1108"><path id="SvgjsPath1109" d="M696.8439086237503 164.08663690363605L730.3864786214247 214.06320075860089" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1110" transform="translate(600.9781712270145,210.7159090909092)"><path id="SvgjsPath1111" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1112"><text id="SvgjsText1113" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1114" dy="18" x="21"><tspan id="SvgjsTspan1115" style="text-decoration:;">09</tspan></tspan></text></g></g><g id="SvgjsG1116"><path id="SvgjsPath1117" d="M667.754933842489 163.35068916506668L633.5493635154148 213.0451181044606" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1118" transform="translate(904.6726156714582,210.7159090909092)"><path id="SvgjsPath1119" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1120"><text id="SvgjsText1121" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1122" dy="18" x="21"><tspan id="SvgjsTspan1123" style="text-decoration:;">87</tspan></tspan></text></g></g><g id="SvgjsG1124"><path id="SvgjsPath1125" d="M879.3077297140957 163.53822047060052L913.0763846084094 213.5831718692937" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1126" transform="translate(783.194837893681,210.7159090909092)"><path id="SvgjsPath1127" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1128"><text id="SvgjsText1129" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1130" dy="18" x="21"><tspan id="SvgjsTspan1131" style="text-decoration:;">65</tspan></tspan></text></g></g><g id="SvgjsG1132"><path id="SvgjsPath1133" d="M851.346466066774 164.19294125532986L820.982932945565 217.67635842221677" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1134" transform="translate(413.4239113547588,160.7429323610036)"><path id="SvgjsPath1135" d="M 0 14.075490196078965L 136.1444855742243 14.075490196078965L 136.1444855742243 0L 157.47098587131364 21.32650029708934L 136.1444855742243 42.65300059417868L 136.1444855742243 28.577510398099715L 0 28.577510398099715L 0 14.075490196078965Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1136"><text id="SvgjsText1137" font-family="微软雅黑" text-anchor="middle" font-size="13px" width="158px" fill="#323232" font-weight="400" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="13px" weight="400" font-style="" opacity="1" y="11.701500297089341" transform="rotate(0)"></text></g></g><g id="SvgjsG1138" transform="translate(396.4239113547588,133.51745395127597)"><path id="SvgjsPath1139" d="M 0 0L 190.46724053218014 0L 190.46724053218014 32.14549965271243L 0 32.14549965271243Z" stroke="none" fill="none"></path><g id="SvgjsG1140"><text id="SvgjsText1141" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="191px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="4.072749826356215" transform="rotate(0)"><tspan id="SvgjsTspan1142" dy="20" x="95.5"><tspan id="SvgjsTspan1143" style="text-decoration:;">右子树空，用左子树填补</tspan></tspan></text></g></g><g id="SvgjsG1144" transform="translate(181.41125203509515,314.10457516339574)"><path id="SvgjsPath1145" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1146"><text id="SvgjsText1147" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1148" dy="18" x="21"><tspan id="SvgjsTspan1149" style="text-decoration:;">53</tspan></tspan></text></g></g><g id="SvgjsG1150" transform="translate(88.02514092398384,380.60836304218503)"><path id="SvgjsPath1151" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1152"><text id="SvgjsText1153" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1154" dy="18" x="21"><tspan id="SvgjsTspan1155" style="text-decoration:;">17</tspan></tspan></text></g></g><g id="SvgjsG1156"><path id="SvgjsPath1157" d="M185.3181590569946 349.4616624149153L123.79631304086374 386.0460434602706" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1158" transform="translate(270.24180759064996,380.60836304218503)"><path id="SvgjsPath1159" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1160"><text id="SvgjsText1161" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1162" dy="18" x="21"><tspan id="SvgjsTspan1163" style="text-decoration:;">78</tspan></tspan></text></g></g><g id="SvgjsG1164"><path id="SvgjsPath1165" d="M218.47931180422034 349.6379437877172L276.564267463619 385.8142382050125" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1166" transform="translate(148.76402981287285,465.2613636363636)"><path id="SvgjsPath1167" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1168"><text id="SvgjsText1169" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1170" dy="18" x="21"><tspan id="SvgjsTspan1171" style="text-decoration:;">45</tspan></tspan></text></g></g><g id="SvgjsG1172"><path id="SvgjsPath1173" d="M123.15198943183103 418.6320914490906L156.69455942950538 468.6086553040552" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1174" transform="translate(27.286252035094847,465.2613636363636)"><path id="SvgjsPath1175" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1176"><text id="SvgjsText1177" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1178" dy="18" x="21"><tspan id="SvgjsTspan1179" style="text-decoration:;">09</tspan></tspan></text></g></g><g id="SvgjsG1180"><path id="SvgjsPath1181" d="M94.06301465056947 417.8961437105212L59.85744432349534 467.590572649915" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1182" transform="translate(330.9806964795389,465.2613636363636)"><path id="SvgjsPath1183" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1184"><text id="SvgjsText1185" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1186" dy="18" x="21"><tspan id="SvgjsTspan1187" style="text-decoration:;">94</tspan></tspan></text></g></g><g id="SvgjsG1188"><path id="SvgjsPath1189" d="M305.6158105221763 418.08367501605505L339.3844654164901 468.1286264147481" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1190" transform="translate(270.24180759064996,549.5748055197969)"><path id="SvgjsPath1191" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1192"><text id="SvgjsText1193" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1194" dy="18" x="21"><tspan id="SvgjsTspan1195" style="text-decoration:;">88</tspan></tspan></text></g></g><g id="SvgjsG1196" transform="translate(88.02514092398387,549.5748055197968)"><path id="SvgjsPath1197" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1198"><text id="SvgjsText1199" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1200" dy="18" x="21"><tspan id="SvgjsTspan1201" style="text-decoration:;">23</tspan></tspan></text></g></g><g id="SvgjsG1202"><path id="SvgjsPath1203" d="M156.67620455717667 504.02898052596584L119.5313664192326 551.6167374555573" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1204"><path id="SvgjsPath1205" d="M338.98363399249763 503.0920550775992L302.89833782102005 552.3608003601579" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1206"><path id="SvgjsPath1207" d="M321.4680964922666 350.2809281782666L293.783136438662 378.0585301680025" stroke="#323232" stroke-width="2" fill="none" marker-end="url(#SvgjsMarker1208)"></path></g><g id="SvgjsG1210" transform="translate(300.2534237522661,322.3773024361229)"><path id="SvgjsPath1211" d="M 0 0L 72.72727272727275 0L 72.72727272727275 25.454545454545453L 0 25.454545454545453Z" stroke="none" fill="none"></path><g id="SvgjsG1212"><text id="SvgjsText1213" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="73px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="0.7272727272727266" transform="rotate(0)"><tspan id="SvgjsTspan1214" dy="20" x="36.5"><tspan id="SvgjsTspan1215" style="text-decoration:;">删除78</tspan></tspan></text></g></g><g id="SvgjsG1216" transform="translate(416.18841841910205,476.2833130599047)"><path id="SvgjsPath1217" d="M 0 14.075490196078965L 136.1444855742243 14.075490196078965L 136.1444855742243 0L 157.47098587131364 21.32650029708934L 136.1444855742243 42.65300059417868L 136.1444855742243 28.577510398099715L 0 28.577510398099715L 0 14.075490196078965Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1218"><text id="SvgjsText1219" font-family="微软雅黑" text-anchor="middle" font-size="13px" width="158px" fill="#323232" font-weight="400" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="13px" weight="400" font-style="" opacity="1" y="11.701500297089341" transform="rotate(0)"></text></g></g><g id="SvgjsG1220" transform="translate(402.18841841910205,439.42147101381346)"><path id="SvgjsPath1221" d="M 0 0L 184.7027334678367 0L 184.7027334678367 42.503670849401885L 0 42.503670849401885Z" stroke="none" fill="none"></path><g id="SvgjsG1222"><text id="SvgjsText1223" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="185px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="9.251835424700943" transform="rotate(0)"><tspan id="SvgjsTspan1224" dy="20" x="92.5"><tspan id="SvgjsTspan1225" style="text-decoration:;">左子树空，用右子树填补</tspan></tspan></text></g></g><g id="SvgjsG1226" transform="translate(758.175393449236,311.2661913250118)"><path id="SvgjsPath1227" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1228"><text id="SvgjsText1229" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1230" dy="18" x="21"><tspan id="SvgjsTspan1231" style="text-decoration:;">53</tspan></tspan></text></g></g><g id="SvgjsG1232" transform="translate(664.7892823381247,377.7699792038011)"><path id="SvgjsPath1233" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1234"><text id="SvgjsText1235" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1236" dy="18" x="21"><tspan id="SvgjsTspan1237" style="text-decoration:;">17</tspan></tspan></text></g></g><g id="SvgjsG1238"><path id="SvgjsPath1239" d="M762.0823004711355 346.62327857653133L700.5604544550046 383.20765962188665" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1240"><path id="SvgjsPath1241" d="M797.4363754670401 344.43081950219744L869.1608553942111 386.3864647490046" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1242" transform="translate(725.5281712270137,462.4229797979797)"><path id="SvgjsPath1243" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1244"><text id="SvgjsText1245" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1246" dy="18" x="21"><tspan id="SvgjsTspan1247" style="text-decoration:;">45</tspan></tspan></text></g></g><g id="SvgjsG1248"><path id="SvgjsPath1249" d="M699.9161308459719 415.79370761070663L733.4587008436462 465.77027146567127" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1250" transform="translate(604.0503934492357,462.4229797979797)"><path id="SvgjsPath1251" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1252"><text id="SvgjsText1253" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1254" dy="18" x="21"><tspan id="SvgjsTspan1255" style="text-decoration:;">09</tspan></tspan></text></g></g><g id="SvgjsG1256"><path id="SvgjsPath1257" d="M670.8271560647104 415.05775987213724L636.6215857376361 464.752188811531" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1258" transform="translate(862.3905643894059,382.22452465834675)"><path id="SvgjsPath1259" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1260"><text id="SvgjsText1261" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1262" dy="18" x="21"><tspan id="SvgjsTspan1263" style="text-decoration:;">94</tspan></tspan></text></g></g><g id="SvgjsG1264" transform="translate(800.1753934492359,462.42297979797974)"><path id="SvgjsPath1265" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1266"><text id="SvgjsText1267" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1268" dy="18" x="21"><tspan id="SvgjsTspan1269" style="text-decoration:;">88</tspan></tspan></text></g></g><g id="SvgjsG1270" transform="translate(664.7892823381247,546.736421681413)"><path id="SvgjsPath1271" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1272"><text id="SvgjsText1273" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1274" dy="18" x="21"><tspan id="SvgjsTspan1275" style="text-decoration:;">23</tspan></tspan></text></g></g><g id="SvgjsG1276"><path id="SvgjsPath1277" d="M733.4403459713175 501.1905966875821L696.2955078333734 548.7783536171736" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1278"><path id="SvgjsPath1279" d="M870.3464324159416 420.0185345504886L832.8789931660289 465.2456561874348" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1280" transform="translate(763.9365045603474,660.6083630421853)"><path id="SvgjsPath1281" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1282"><text id="SvgjsText1283" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1284" dy="18" x="21"><tspan id="SvgjsTspan1285" style="text-decoration:;">53</tspan></tspan></text></g></g><g id="SvgjsG1286" transform="translate(670.5503934492361,727.1121509209744)"><path id="SvgjsPath1287" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1288"><text id="SvgjsText1289" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1290" dy="18" x="21"><tspan id="SvgjsTspan1291" style="text-decoration:;">17</tspan></tspan></text></g></g><g id="SvgjsG1292"><path id="SvgjsPath1293" d="M767.843411582247 695.9654502937047L706.321565566116 732.54983133906" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1294" transform="translate(852.7670601159023,727.1121509209744)"><path id="SvgjsPath1295" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1296"><text id="SvgjsText1297" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1298" dy="18" x="21"><tspan id="SvgjsTspan1299" style="text-decoration:;">81</tspan></tspan></text></g></g><g id="SvgjsG1300"><path id="SvgjsPath1301" d="M801.0045643294727 696.1417316665065L859.0895199888714 732.3180260838019" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1302" transform="translate(731.2892823381251,811.765151515153)"><path id="SvgjsPath1303" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1304"><text id="SvgjsText1305" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1306" dy="18" x="21"><tspan id="SvgjsTspan1307" style="text-decoration:;">45</tspan></tspan></text></g></g><g id="SvgjsG1308"><path id="SvgjsPath1309" d="M705.6772419570833 765.13587932788L739.2198119547576 815.1124431828448" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1310" transform="translate(609.8115045603472,811.765151515153)"><path id="SvgjsPath1311" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1312"><text id="SvgjsText1313" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1314" dy="18" x="21"><tspan id="SvgjsTspan1315" style="text-decoration:;">09</tspan></tspan></text></g></g><g id="SvgjsG1316"><path id="SvgjsPath1317" d="M676.5882671758218 764.3999315893105L642.3826968487476 814.0943605287044" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1318" transform="translate(913.5059490047913,811.765151515153)"><path id="SvgjsPath1319" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1320"><text id="SvgjsText1321" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1322" dy="18" x="21"><tspan id="SvgjsTspan1323" style="text-decoration:;">94</tspan></tspan></text></g></g><g id="SvgjsG1324"><path id="SvgjsPath1325" d="M888.1410630474287 764.5874628948444L921.9097179417425 814.6324142935376" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1326" transform="translate(792.0281712270139,811.765151515153)"><path id="SvgjsPath1327" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1328"><text id="SvgjsText1329" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1330" dy="18" x="21"><tspan id="SvgjsTspan1331" style="text-decoration:;">65</tspan></tspan></text></g></g><g id="SvgjsG1332" transform="translate(670.5503934492361,896.0785933985861)"><path id="SvgjsPath1333" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1334"><text id="SvgjsText1335" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1336" dy="18" x="21"><tspan id="SvgjsTspan1337" style="text-decoration:;">23</tspan></tspan></text></g></g><g id="SvgjsG1338"><path id="SvgjsPath1339" d="M739.2014570824289 850.5327684047553L702.0566189444849 898.1205253343466" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1340"><path id="SvgjsPath1341" d="M860.179799400107 765.2421836795739L829.816266278898 818.7256008464607" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1342" transform="translate(852.7670601159023,904.4119267319194)"><path id="SvgjsPath1343" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1344"><text id="SvgjsText1345" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1346" dy="18" x="21"><tspan id="SvgjsTspan1347" style="text-decoration:;">88</tspan></tspan></text></g></g><g id="SvgjsG1348"><path id="SvgjsPath1349" d="M883.1392195761757 906.084759021261L921.1821391527146 850.0757449441769" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1350" transform="translate(181.41125203509515,646.2678434085219)"><path id="SvgjsPath1351" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1352"><text id="SvgjsText1353" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1354" dy="18" x="21"><tspan id="SvgjsTspan1355" style="text-decoration:;">53</tspan></tspan></text></g></g><g id="SvgjsG1356" transform="translate(88.02514092398378,712.771631287311)"><path id="SvgjsPath1357" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1358"><text id="SvgjsText1359" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1360" dy="18" x="21"><tspan id="SvgjsTspan1361" style="text-decoration:;">17</tspan></tspan></text></g></g><g id="SvgjsG1362"><path id="SvgjsPath1363" d="M185.31815905699466 681.6249306600414L123.79631304086365 718.2093117053967" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1364" transform="translate(270.2418075906499,712.771631287311)"><path id="SvgjsPath1365" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1366"><text id="SvgjsText1367" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1368" dy="18" x="21"><tspan id="SvgjsTspan1369" style="text-decoration:;">78</tspan></tspan></text></g></g><g id="SvgjsG1370"><path id="SvgjsPath1371" d="M218.47931180422032 681.8012120328433L276.56426746361893 717.9775064501384" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1372" transform="translate(148.76402981287274,797.4246318814896)"><path id="SvgjsPath1373" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1374"><text id="SvgjsText1375" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1376" dy="18" x="21"><tspan id="SvgjsTspan1377" style="text-decoration:;">45</tspan></tspan></text></g></g><g id="SvgjsG1378"><path id="SvgjsPath1379" d="M123.15198943183094 750.7953596942167L156.69455942950532 800.7719235491815" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1380" transform="translate(27.286252035094847,797.4246318814896)"><path id="SvgjsPath1381" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1382"><text id="SvgjsText1383" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1384" dy="18" x="21"><tspan id="SvgjsTspan1385" style="text-decoration:;">09</tspan></tspan></text></g></g><g id="SvgjsG1386"><path id="SvgjsPath1387" d="M94.06301465056937 750.0594119556472L59.85744432349529 799.7538408950411" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1388" transform="translate(330.98069647953884,797.4246318814896)"><path id="SvgjsPath1389" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1390"><text id="SvgjsText1391" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1392" dy="18" x="21"><tspan id="SvgjsTspan1393" style="text-decoration:;">94</tspan></tspan></text></g></g><g id="SvgjsG1394"><path id="SvgjsPath1395" d="M305.6158105221762 750.2469432611811L339.38446541649006 800.2918946598743" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1396" transform="translate(209.50291870176162,797.4246318814896)"><path id="SvgjsPath1397" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1398"><text id="SvgjsText1399" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1400" dy="18" x="21"><tspan id="SvgjsTspan1401" style="text-decoration:;">65</tspan></tspan></text></g></g><g id="SvgjsG1402" transform="translate(88.02514092398378,881.7380737649228)"><path id="SvgjsPath1403" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1404"><text id="SvgjsText1405" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1406" dy="18" x="21"><tspan id="SvgjsTspan1407" style="text-decoration:;">23</tspan></tspan></text></g></g><g id="SvgjsG1408"><path id="SvgjsPath1409" d="M156.6762045571766 836.192248771092L119.53136641923254 883.7800057006832" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1410"><path id="SvgjsPath1411" d="M277.6545468748546 750.9016640459106L247.29101375364564 804.3850812127973" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1412"><path id="SvgjsPath1413" d="M328.21052073469116 683.8078327870289L304.6664611024942 713.5390650348323" stroke="#323232" stroke-width="2" fill="none" marker-end="url(#SvgjsMarker1414)"></path></g><g id="SvgjsG1416" transform="translate(300.25342375226603,658.7678434085218)"><path id="SvgjsPath1417" d="M 0 0L 72.72727272727275 0L 72.72727272727275 25.454545454545453L 0 25.454545454545453Z" stroke="none" fill="none"></path><g id="SvgjsG1418"><text id="SvgjsText1419" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="73px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="0.7272727272727266" transform="rotate(0)"><tspan id="SvgjsTspan1420" dy="20" x="36.5"><tspan id="SvgjsTspan1421" style="text-decoration:;">删除78</tspan></tspan></text></g></g><g id="SvgjsG1422" transform="translate(270.2418075906499,890.071407098256)"><path id="SvgjsPath1423" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1424"><text id="SvgjsText1425" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1426" dy="18" x="21"><tspan id="SvgjsTspan1427" style="text-decoration:;">81</tspan></tspan></text></g></g><g id="SvgjsG1428" transform="translate(330.9806964795388,974.406399015722)"><path id="SvgjsPath1429" d="M 0 21C 0 -7 42 -7 42 21C 42 49 0 49 0 21Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1430"><text id="SvgjsText1431" font-family="&quot;Times New Roman&quot;" text-anchor="middle" font-size="15px" width="22px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="&quot;Times New Roman&quot;" size="15px" weight="700" font-style="" opacity="1" y="9.625" transform="rotate(0)"><tspan id="SvgjsTspan1432" dy="18" x="21"><tspan id="SvgjsTspan1433" style="text-decoration:;">88</tspan></tspan></text></g></g><g id="SvgjsG1434"><path id="SvgjsPath1435" d="M300.61396705092335 891.7442393875976L338.6568866274621 835.7352253105136" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1436"><path id="SvgjsPath1437" d="M304.5662594071644 928.3722813044L336.8061870862761 979.7615038555881" stroke="#323232" stroke-width="2" fill="none"></path></g><g id="SvgjsG1438"><path id="SvgjsPath1439" d="M291.2418075906499 889.071407098256L291.2418075906499 757.071631287311" stroke-dasharray="8,5" stroke="#323232" stroke-width="1" fill="none" marker-end="url(#SvgjsMarker1440)"></path></g><g id="SvgjsG1442"><path id="SvgjsPath1443" d="M369.2696638465529 826.2499846448286C 422.0857337100565 856.629990048304 416.7725073805893 944.942828314226 367.8118632655691 978.9876089466603" stroke-dasharray="8,5" stroke="#323232" stroke-width="1" fill="none" marker-end="url(#SvgjsMarker1444)"></path></g><g id="SvgjsG1446" transform="translate(426.420166015625,828.1529899592668)"><path id="SvgjsPath1447" d="M 0 14.075490196078965L 136.1444855742243 14.075490196078965L 136.1444855742243 0L 157.47098587131364 21.32650029708934L 136.1444855742243 42.65300059417868L 136.1444855742243 28.577510398099715L 0 28.577510398099715L 0 14.075490196078965Z" stroke="rgba(50,50,50,1)" stroke-width="2" fill-opacity="1" fill="#ffffff"></path><g id="SvgjsG1448"><text id="SvgjsText1449" font-family="微软雅黑" text-anchor="middle" font-size="13px" width="158px" fill="#323232" font-weight="400" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="13px" weight="400" font-style="" opacity="1" y="11.701500297089341" transform="rotate(0)"></text></g></g><g id="SvgjsG1450" transform="translate(392.420166015625,756.7327846678971)"><path id="SvgjsPath1451" d="M 0 0L 224.55288188543335 0L 224.55288188543335 88.0052890970261L 0 88.0052890970261Z" stroke="none" fill="none"></path><g id="SvgjsG1452"><text id="SvgjsText1453" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="225px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="12.002644548513047" transform="rotate(0)"><tspan id="SvgjsTspan1454" dy="20" x="112.5"><tspan id="SvgjsTspan1455" style="text-decoration:;">左、右子树均不空，</tspan></tspan><tspan id="SvgjsTspan1456" dy="20" x="112.5"><tspan id="SvgjsTspan1457" style="text-decoration:;">在右子树上找中序</tspan></tspan><tspan id="SvgjsTspan1458" dy="20" x="112.5"><tspan id="SvgjsTspan1459" style="text-decoration:;">第一个结点填补</tspan></tspan></text></g></g><g id="SvgjsG1460" transform="translate(441.420166015625,864.738073764923)"><path id="SvgjsPath1461" d="M 0 0L 128.14083860323092 0L 128.14083860323092 25.333333333333258L 0 25.333333333333258Z" stroke="none" fill="none"></path><g id="SvgjsG1462"><text id="SvgjsText1463" font-family="微软雅黑" text-anchor="middle" font-size="16px" width="129px" fill="#323232" font-weight="700" align="middle" lineHeight="125%" anchor="middle" family="微软雅黑" size="16px" weight="700" font-style="" opacity="1" y="0.6666666666666288" transform="rotate(0)"><tspan id="SvgjsTspan1464" dy="20" x="64.5"><tspan id="SvgjsTspan1465" style="text-decoration:;">转换为删除81</tspan></tspan></text></g></g></svg>
</center>

```java
public void remove(int key) {
    root = remove(root, key);
}

// 在根为 root 的二叉搜索树中删除值为 key 的结点，返回删除后重新构造的二叉搜索树的根
private static Node remove(Node root, int key) {
    // 空树，直接返回 null
    if (root == null) return null;
    // key 小于根结点的值，应该在左子树中删除该结点
    if (key < root.data) {
        root.left = remove(root.left, key);
    } 
    // key 大于根结点的值，应该在右子树中删除该结点
    else if (key > root.data) {
        root.right = remove(root.right, key);
    } 
    // root 就是要删除的结点
    else {
        // 左右子树均存在，取其后继结点赋值 root，转化为在右子树中删除 successor 的问题
        if (root.left != null && root.right != null) {
            Node successor = successor(root);
            root.data = successor.data;
            root.right = remove(root.right, successor.data);
        } else {
            // 叶子结点
            if (root.left == null && root.right == null) {
                return null;
            }
            // 仅有左子树
            if (root.left != null) {
                return root.left;
            }
            // 仅有右子树
            else {
                return root.right;
            }
        }
    }
    return root;
}
```

> [!TIP]
>
> 非递归版本的删除代码见完整代码中的 `remove2()` 方法

# 9. 完整代码

输出结果：

```
            53           
         /     \         
      17          78     
    /   \       /   \    
  9       45  65      87 
         /               
        23               
==========================
            65           
         /     \         
      17          78     
    /   \           \    
  9       45          87 
         /               
        23               
==========================
            78           
         /     \         
      17          87     
    /   \                
  9       45             
         /               
        23   
```

源码：

```java
package com.ice.bst;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.LinkedList;
import java.util.StringJoiner;
import java.util.function.Consumer;

/**
 * @author ice
 * @blog https://blog.csdn.net/dreaming_coder
 * @description
 * @create 2022-02-23 15:49:36
 */
public class BST {

    public static void main(String[] args) {
        BST tree = new BST();
        tree.insert(53);
        tree.insert(17);
        tree.insert(9);
        tree.insert(45);
        tree.insert(23);
        tree.insert(78);
        tree.insert(65);
        tree.insert(87);
        show(tree.getRoot());
        System.out.println("===========");
        tree.remove(53);
        show(tree.getRoot());
        System.out.println("===========");
        tree.remove(65);

        show(tree.getRoot());

    }

    private Node root;

    public Node getRoot() {
        return root;
    }

    public static boolean isBinarySearchTree(Node root) {
        return isBinarySearchTree(root, Long.MIN_VALUE, Long.MAX_VALUE);
    }

    private static boolean isBinarySearchTree(Node node, long lower, long upper) {
        if (node == null) return true;
        if (node.data <= lower || node.data >= upper) return false;
        return isBinarySearchTree(node.left, lower, node.data) && isBinarySearchTree(node.right, node.data, upper);
    }

    public static boolean isBinarySearchTree1(Node root) {

        if (root == null) return false;
        Deque<Node> deque = new LinkedList<>();
        Integer pre = null;
        Node node = root;
        while (node != null || !deque.isEmpty()) {
            while (node != null) {
                deque.push(node);
                node = node.left;
            }
            node = deque.pop();
            if (pre != null && node.data < pre) {
                return false;
            }
            pre = node.data;
            node = node.right;
        }
        return true;
    }

    public void inOrder(Consumer<Node> consumer) {
        if (root == null) return;
        Node node = root;
        Deque<Node> deque = new ArrayDeque<>();
        while (node != null || !deque.isEmpty()) {
            while (node != null) {
                deque.push(node);
                node = node.left;
            }
            node = deque.pop();
            consumer.accept(node);
            node = node.right;
        }
    }

    public Node search(int key) {
        Node node = root;
        while (node != null && node.data != key) {
            node = key < node.data ? node.left : node.right;
        }
        return node;
    }

    private static Node[] searchWithParent(Node root, int key) {
        Node node = root;
        Node parent = null;
        while (node != null && node.data != key) {
            parent = node;
            node = key < node.data ? node.left : node.right;
        }
        if (node == null) return null;
        return new Node[]{parent, node};
    }

    public void insert(int key) {
        Node newNode = new Node(key);
        if (root == null) {
            root = newNode;
            return;
        }
        Node parent = null;
        Node node = root;
        while (node != null) {
            // 元素已经存在，则插入失败
            if (node.compareTo(newNode) == 0) {
                return;
            }
            parent = node;
            node = node.compareTo(newNode) > 0 ? node.left : node.right;
        }
        if (parent.compareTo(newNode) > 0) {
            parent.left = newNode;
        } else {
            parent.right = newNode;
        }
    }

    public void remove(int key) {
        root = remove(root, key);
    }

    // 在根为 root 的二叉搜索树中删除值为 key 的结点，返回删除后二叉搜索树的根
    private static Node remove(Node root, int key) {
        // 空树，直接返回 null
        if (root == null) return null;
        if (key < root.data) {
            root.left = remove(root.left, key);
        } else if (key > root.data) {
            root.right = remove(root.right, key);
        } else {
            // 左右子树均存在
            if (root.left != null && root.right != null) {
                Node successor = successor(root);
                root.data = successor.data;
                root.right = remove(root.right, successor.data);
            } else {
                // 叶子结点
                if (root.left == null && root.right == null) {
                    return null;
                }
                // 仅有左子树
                if (root.left != null) {
                    return root.left;
                }
                // 仅有右子树
                else {
                    return root.right;
                }
            }
        }
        return root;
    }

    public void remove2(int key) {
        // 空树，直接返回 null
        if (root == null) return;

        // 查找 key 对应结点及其父结点，如果找不到则返回 null
        Node[] nodes = searchWithParent(root, key);
        if (nodes == null) return;

        Node parent = nodes[0];
        Node node = nodes[1];

        // 查找目标结点的前驱和后继结点
        Node successor = successor(node);
        Node predecessor = predecessor(node);

        // 当目标结点是叶子结点时，直接删除该结点
        if (successor == null && predecessor == null) {
            if (parent == null) { // 如果目标结点是根结点，则将根结点置为 null
                root = null;
            } else if (parent.left == node) {
                parent.left = null;
            } else {
                parent.right = null;
            }
        }
        // 如果目标结点只有左子树，则将左子树顶替到目标结点位置
        else if (predecessor != null && successor == null) {
            if (parent.left == node) {
                parent.left = node.left;
            } else {
                parent.right = node.left;
            }
        }
        // 如果目标结点只有右子树，则将右子树顶替到目标结点位置
        else if (predecessor == null) {
            if (parent.left == node) {
                parent.left = node.right;
            } else {
                parent.right = node.right;
            }
        }
        // 如果目标结点左右子树都存在，则目标结点用其后继结点的值覆盖，转而删除后继结点
        else {
            node.data = successor.data;
            nodes = searchWithParent(node.right, successor.data);
            assert nodes != null;
            parent = nodes[0];
            // 后继结点只可能出现两种情况，一种是叶子结点，一种是只有右子树的结点
            if (parent == null) {
                node.right = successor.right;
            } else {
                parent.left = successor.right;
            }
        }
    }


    // 查找以该结点为根的左子树中的最大结点
    public static Node predecessor(Node node) {
        if (node.left == null) {
            return null;
        }
        node = node.left;
        while (node.right != null) {
            node = node.right;
        }
        return node;
    }

    // 查找以该结点为根的右子树中的最小结点
    public static Node successor(Node node) {
        if (node.right == null) {
            return null;
        }
        node = node.right;
        while (node.left != null) {
            node = node.left;
        }
        return node;
    }

    private static class Node implements Comparable<Node> {
        public int data;
        public Node left;
        public Node right;

        public Node(int data) {
            this(data, null, null);
        }

        public Node(int data, Node left, Node right) {
            this.data = data;
            this.left = left;
            this.right = right;
        }

        @Override
        public String toString() {
            return new StringJoiner(", ", Node.class.getSimpleName() + "[", "]")
                    .add("data=" + data)
                    .toString();
        }

        @Override
        public int compareTo(Node node) {
            return data - node.data;
        }
    }

    // 用于获得树的层数
    public static int getTreeDepth(Node root) {
        return root == null ? 0 : (1 + Math.max(getTreeDepth(root.left), getTreeDepth(root.right)));
    }

    private static void writeArray(Node currNode, int rowIndex, int columnIndex, String[][] res, int treeDepth) {
        // 保证输入的树不为空
        if (currNode == null) return;
        // 先将当前节点保存到二维数组中
        res[rowIndex][columnIndex] = String.valueOf(currNode.data);

        // 计算当前位于树的第几层
        int currLevel = (rowIndex + 1) / 2;
        // 若到了最后一层，则返回
        if (currLevel == treeDepth) return;
        // 计算当前行到下一行，每个元素之间的间隔（下一行的列索引与当前元素的列索引之间的间隔）
        int gap = treeDepth - currLevel - 1;

        // 对左儿子进行判断，若有左儿子，则记录相应的"/"与左儿子的值
        if (currNode.left != null) {
            res[rowIndex + 1][columnIndex - gap] = "/";
            writeArray(currNode.left, rowIndex + 2, columnIndex - gap * 2, res, treeDepth);
        }

        // 对右儿子进行判断，若有右儿子，则记录相应的"\"与右儿子的值
        if (currNode.right != null) {
            res[rowIndex + 1][columnIndex + gap] = "\\";
            writeArray(currNode.right, rowIndex + 2, columnIndex + gap * 2, res, treeDepth);
        }
    }

    /*
    树的结构示例：
              1
            /   \
          2       3
         / \     / \
        4   5   6   7
    */
    public static void show(Node root) {
        if (root == null) System.out.println("EMPTY!");
        // 得到树的深度
        int treeDepth = getTreeDepth(root);

        // 最后一行的宽度为2的（n - 1）次方乘3，再加1
        // 作为整个二维数组的宽度
        int arrayHeight = treeDepth * 2 - 1;
        int arrayWidth = (2 << (treeDepth - 2)) * 3 + 1;
        // 用一个字符串数组来存储每个位置应显示的元素
        String[][] res = new String[arrayHeight][arrayWidth];
        // 对数组进行初始化，默认为一个空格
        for (int i = 0; i < arrayHeight; i++) {
            for (int j = 0; j < arrayWidth; j++) {
                res[i][j] = " ";
            }
        }

        // 从根节点开始，递归处理整个树
        // res[0][(arrayWidth + 1)/ 2] = (char)(root.val + '0');
        writeArray(root, 0, arrayWidth / 2, res, treeDepth);

        // 此时，已经将所有需要显示的元素储存到了二维数组中，将其拼接并打印即可
        for (String[] line : res) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < line.length; i++) {
                sb.append(line[i]);
                if (line[i].length() > 1 && i <= line.length - 1) {
                    i += line[i].length() > 4 ? 2 : line[i].length() - 1;
                }
            }
            System.out.println(sb);
        }
    }
}
```

