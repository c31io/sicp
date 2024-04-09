#lang sicp

; 1
; 1 1
; 1 2 1
; 1 3 3 1
; 1 4 6 4 1

(define (pascal row col)
  (if (or (= col 1) (= row col))
    1
    (+ (pascal (- row 1) col) (pascal (- row 1) (- col 1)))))

(pascal 5 3)
