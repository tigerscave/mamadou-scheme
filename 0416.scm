(define lat?
  (lambda (l)
    (cond
    ((null? l) #t)
    ((atom? (car l)) (lat? (cdr l)))
    (else #f))))
(define atom?
  (lambda (x)
  (and (pair? x)) (not (pair? x))))
  
(print (lat? 'apple))
