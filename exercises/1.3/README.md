# 描述

`Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.`

`定义一个过程，该过程将三个数字作为参数，并返回两个较大数字的平方和。`

# 解答

这里的难点在于找出三个数中较大的两个，我这里的思路主要是先找出最小的那个，如果`a <= b <= c`那么`a`就是最小的

```scheme
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-of-max a b c)
  (cond ((<= a b c) (sum-of-squares b c))
        ((<= b c a) (sum-of-squares c a))
        ((<= c a b) (sum-of-squares a b))
  )
)

(sum-of-max 1 2 3)

13
```