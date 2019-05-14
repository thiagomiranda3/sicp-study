#lang sicp

(define (p) (p))

(define (test x y)
(if (= x 0) 0 y))

; Esse código funciona numa "normal evaluation" pois o código é lazy, numa "applicative evaluation", entraria num loop infinito
(test 0 (p))