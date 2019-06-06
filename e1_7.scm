					; Original definition
#|
(define (sqrt-iter guess x)
(if (good-enough? guess x)
guess
(sqrt-iter (improve guess x)
x)))

(define (improve guess x)
(average guess (/ x guess)))

(define (average x y)
(/ (+ x y) 2))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.0001))

(define (sqrt x)
(sqrt-iter 1.0 x))
|#

(define (sqrt-iter-new guess old-guess x)
  (if (good-enough?-new old-guess guess)
      guess
      (sqrt-iter-new (improve-new guess x) guess x)))

(define (improve-new guess x)
(average-new guess (/ x guess)))

(define (average-new x y)
(/ (+ x y) 2))

(define (good-enough?-new old-guess improved-guess)
(< (abs (- old-guess improved-guess)) 0.0001))

(define (sqrt-new x)
(sqrt-iter-new 1.0 0 x))
