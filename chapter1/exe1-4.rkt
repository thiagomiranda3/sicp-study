#lang sicp

; Retorna a função + ou - dependendo do valor de b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))