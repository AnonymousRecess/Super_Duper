(define (duper source count)
	(define (super nextSource remaining)
		(if (= remaining 0)

			(cons(duper (car nextSource )  (- remaining 1)) (duper (cdr nextSource) (- 1 remaining)))



			(cons (car source)  (super nextSource (- remaining 1)))
		)
	)

			(if (pair? source)
				(super source   count )
				source
			)
)
	
(display(duper '((sa) a) 3))


