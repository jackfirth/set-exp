#lang set-exp racket

(require rackunit)

(define some-set {1 2 3 4 5})

(check-true (set-member? some-set 3))
(check-false (set-member? some-set 'foo))