# 描述

`Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:`

`Ben Bitdiddle发明了一项测试，以确定他所面临的口译员是使用申请顺序评估还是正常顺序评估。 他定义了以下两个程序：`

```scheme
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
```

`Then he evaluates the expression`

`然后他评估表达式`

```scheme
(test 0 (p))
```

`What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.)`

`Ben使用应用程序订单评估的解释器会观察到什么行为？ 对于使用正态评估的翻译，他会观察到什么样的行为？ 解释你的答案。 （假设解释器使用正常或适用顺序时，特殊形式的评估规则是相同的：首先评估谓词表达式，结果确定是评估结果表达式还是替代表达式。）`


# 解答

先看定义`完全展开的求值模型是正则序，先求参数而后应用是应用序`

第一个过程定义的是返回函数本身，这是个死循环，这里定义就不会通过

第二个过程定义的是测试第一个参数是否为0，为0就返回0，不是就返回第二个参数

所以如果是打印出0，就是应用序，如果是死循环不输出结果就是正则序