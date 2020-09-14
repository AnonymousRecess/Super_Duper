;; Scheme Duplication Program

(define (Super_Duper source count)
	(if (null? source)
		""
		(cons (cons (car source)  (car source)) (Super_Duper(cdr source) count))))
(display(Super_Duper '(x y) 2))