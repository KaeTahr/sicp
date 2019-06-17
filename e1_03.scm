(define square (lambda (x)
  (* x x)))

(define sum-squares (lambda (x y)
  (+ (square x) (square y))))

(define (prob  a b c)
  (cond ((and (> a c) (> b c))
	(sum-squares a b))
	((and (> a b) (> c b))
	 (sum-squares a c))
	(else
	 (sum-squares c b))))

