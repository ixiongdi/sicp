(define (square x) (* x x))

(define (cube x) (* x x x))

(define (average x y)
        (/ (+ x y) 2))

(define (improve guess x)
        (/ (+  (/ x (square guess))  (* 2 guess)) 3)
)

(define (good-enough? guess x)
        (< (/ (abs (- (cube guess) x)) guess) 0.001)
)

(define (cubic-iter guess x)
        (if (good-enough? guess x)
                guess
                (cubic-iter (improve guess x)
                           x)))

(define (cubic x) (cubic-iter 1.0 x))

(cubic 27)