(define (suqare x) (* x x))

(define (sum-of-square x y) (+ (square x) (square y)))

(define (sum-of-max a b c)
  (cond ((<= a b c) (sum-of-square b c))
        ((<= b c a) (sum-of-square c a))
        ((<= c a b) (sum-of-square a b))
  )
)

(sum-of-max 1 2 3)