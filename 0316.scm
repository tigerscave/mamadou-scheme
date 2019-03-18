
(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
        ((atom? (car l)) (lat? (cdr l)))
          (else #f))))
(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))
;(print (atom? '()))
;#f
;(print (atom '(a b c)))
;#t
(print (lat?  '(a b c)))
(print (lat? '()))
(print (lat? '(())))
(print (lat? '((a b c))))
;#t
;#t
;(print (rember 'apple '(apple banana orange)))
;(banana orange)
;(print (rember 'apple '(apple banana apple orange)))
;(banana apple orange)
(define rember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      ((eq? (car lat) a) (cdr lat))
      (else (rember a (cdr lat))))))

(print (rember 'apple '(apple banana )))
(print (rember 'apple '(apple apple apple)))

;(print (sub1 6))
; => 5
;(print (sub1 3))
; => 2
(define sub1
  (lambda (x)
    (- x 1)))

(print (sub1 6))
(print (sub1 3))

(define add1
  (lambda (x)
    (+ x 1)))
(print (add1 5))
(print (add1 3))
(print (add1 4))
