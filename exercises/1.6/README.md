# 问题

`Alyssa P. Hacker doesn't see why if needs to be provided as a special form. ``Why can't I just define it as an ordinary procedure in terms of cond?'' she asks. Alyssa's friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:`

`Alyssa P. Hacker不明白为什么需要作为特殊形式提供。 “为什么我不能把它定义为cond方面的普通程序？”她问道。 Alyssa的朋友Eva Lu Ator声称这确实可以做到，她定义了if的新版本：`

```scheme
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
```

`Eva demonstrates the program for Alyssa:`

`伊娃演示了Alyssa的节目：`

```scheme
(new-if (= 2 3) 0 5)
5

(new-if (= 1 1) 0 5)
0
```

`Delighted, Alyssa uses new-if to rewrite the square-root program:`

`很高兴，Alyssa使用new-if来重写平方根程序：`

```scheme
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
```

`What happens when Alyssa attempts to use this to compute square roots? Explain.`

`当Alyssa试图用它来计算平方根时会发生什么？ 说明。`


# 解答

这个程序将不能正常执行，因为`cond`如果对应的条件p为真那么e中的表达式就会顺序的求值，而表达式是一个递归序列，会超出解释器的堆栈