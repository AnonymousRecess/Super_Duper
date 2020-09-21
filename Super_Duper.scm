;; Scheme Duplication Program

(define (Super_Duper source count)
	(if (null? source)
		source
		(cons(Copy_It source count) (cdr source))))


(define (Copy_It source count)
	(if (not (= 0 count))
		(cons (car source) (Copy_It (cdr source) (- count 1)))
		(Super_Duper(cdr source) count)))

(display(Super_Duper '(xy) 2))