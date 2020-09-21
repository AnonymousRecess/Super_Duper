;;Copy program

(define (Copy source count)
	(if (null? source)
		'()
		(if (not (= count 0))
		(cons
		(car source )
			(Copy source (- count 1)))
		'()
		)))
		

(define (Single newsource counts)
	(if (null? newsource)
		'()
		(cons
		(Copy newsource counts)
		(Single (cdr newsource) counts))))

;(display(Copy '(xy) 3))
(display(Single '(xy sa) 3))