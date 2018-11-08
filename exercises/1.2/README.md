# 描述

`Translate the following expression into prefix form`

`将以下表达式转换为前缀形式`

![](https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/ch1-Z-G-3.gif)

# 解答

```scheme
(
    / (
        + 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))
    ) (* 3 (- 6 2) (- 2 7))
)

-37/150
```