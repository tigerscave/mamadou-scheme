(define function_length
  (lambda (lat)
    (cond
    ((null? lat) 0)
    (else (+ 1 (length (cdr lat)))))))

(print (length '(a b c d e f)))
