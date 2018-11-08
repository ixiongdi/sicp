# 描述

`Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:`

`观察我们的评估模型允许其运算符为复合表达式的组合。 使用此观察来描述以下过程的行为：`

```scheme
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
```

# 解答

主要是`(if (> b 0) + -)`的理解，如果`b > 0` 则操作符为`+`也就是 `a + b`, 如果 `b <= 0` 则操作符为`-`也就是`a - b` 