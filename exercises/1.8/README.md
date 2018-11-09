# 问题

`Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x, then a better approximation is given by the value`

`牛顿的立方根的方法是基于这样的事实，即如果y是x的立方根的近似值，那么值的更好逼近`

![](https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/ch1-Z-G-5.gif)

`Use this formula to implement a cube-root procedure analogous to the square-root procedure. (In section 1.3.4 we will see how to implement Newton's method in general as an abstraction of these square-root and cube-root procedures.)`

`使用此公式实现类似于平方根过程的多维数据集根过程。 （在1.3.4节中，我们将看到如何实现牛顿方法作为这些平方根和立方根程序的抽象。）`

# 解答

主要是描述优化过程

```scheme
(define (improve guess x)
        (/ (+  (/ x (square guess))  (* 2 guess)) 3)
)
```