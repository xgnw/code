#### [numpy.c_()](https://numpy.org/doc/stable/reference/generated/numpy.c_.html?highlight=c_#numpy.c_)  and  [numpy.r_()](https://numpy.org/doc/stable/reference/generated/numpy.r_.html?highlight=r_#numpy.r_)的用法



> **np.r_是按列连接两个矩阵，就是把两矩阵上下相加，要求列数相等。**
>
> **np.c_是按行连接两个矩阵，就是把两矩阵左右相加，要求行数相等。**



Demo:

1.numpy.c_:

~~~python
import numpy as np

x = np.arange(12).reshape(3,4)
print('x:',x, x.shape)

y = np.arange(10,22).reshape(3,4)
print('y:',y, y.shape)

z = np.c_[x,y]
print('z:',z, z.shape)
~~~

result:

~~~python
x: [[ 0  1  2  3]
 [ 4  5  6  7]
 [ 8  9 10 11]] (3, 4)
y: [[10 11 12 13]
 [14 15 16 17]
 [18 19 20 21]] (3, 4)
z: [[ 0  1  2  3 10 11 12 13]
 [ 4  5  6  7 14 15 16 17]
 [ 8  9 10 11 18 19 20 21]] (3, 8)
~~~



2.numpy.r_用法:

~~~python
import numpy as np

x = np.arange(12).reshape(3,4)
print('x:',x, x.shape)

y = np.arange(10,22).reshape(3,4)
print('y:',y, y.shape)

z = np.r_[x,y]
print('z:',z, z.shape)
~~~

result:

~~~python
x: [[ 0  1  2  3]
 [ 4  5  6  7]
 [ 8  9 10 11]] (3, 4)
y: [[10 11 12 13]
 [14 15 16 17]
 [18 19 20 21]] (3, 4)
z: [[ 0  1  2  3]
 [ 4  5  6  7]
 [ 8  9 10 11]
 [10 11 12 13]
 [14 15 16 17]
 [18 19 20 21]] (6, 4)
~~~





