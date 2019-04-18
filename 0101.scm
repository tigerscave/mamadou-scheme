(define sum-tup-in-tup
  (lambda (tup)
    (cond
      ((null? tup) 0)
      ((number? tup) tup)
      (else (+ (sum-tup-in-tup (car tup)) (sum-tup-in-tup (cdr tup))))
    )
  )
)

(print (sum-tup-in-tup '(2 3 (4 5) 5 7)))

(define function_sq-xy-sub
  (lambda (x y)
    (* (- x y) (- x y))))
(print (function_sq-xy-sub 10 5))
(print (function_sq-xy-sub 4 5))
(print (function_sq-xy-sub 7 3))

(define power
  (lambda (n m)
    (cond
      ((zero? m) 1)
      (else (* n (power n (- m 1))))
    )
  )
)

(print (power 5 3))

(define tup-sum
  (lambda (tup)
    (cond
      ((null? tup) 0)
      ((number? tup) tup)
      (else (+ (car tup) (tup-sum (cdr tup))))
    )
  )
)

(print (sum-tup-in-tup '(2 3 4 5 6)))
