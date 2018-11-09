# 问题

`The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers. Also, in real computers, arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers. Explain these statements, with examples showing how the test fails for small and large numbers. An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess. Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?`

`好不够的？ 用于计算平方根的测试对于找到非常小数的平方根不是非常有效。 而且，在实际计算机中，几乎总是以有限的精度执行算术运算。 这使我们的测试不适合非常大的数字。 解释这些陈述，并举例说明测试对于小数字和大数字是如何失败的。 实施足够好的替代战略？ 是观察猜测从一次迭代到下一次迭代的变化，并在变化只是猜测的一小部分时停止。 设计使用这种结束测试的平方根过程。 这对小型和大型数据有效吗？`


# 答案

对于足够小的数字，由于我们的精度是一个固定的数值，那么如果我们要找的这个数小于这个固定的数值，那么计算的精度会很低

对于足够大的数值，由于迭代的会很深，求值过程会非常漫长，甚至有可能堆栈溢出，陷入死循环

我这把假设 比率小于0.001的时候结束

```scheme
(define (good-enough? guess x)
        (< (/ (abs (- (square guess) x)) guess) 0.001)
)
```