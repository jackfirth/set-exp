# set-exp
A Racket meta-language for adding set literals to a language, i.e. making `{1 2 3 4}` a set of four elements.

```racket
#lang set-exp racket

(define some-set {1 2 3 4})

(set-member? some-set 5)
(set-member? some-set 'foo)
```

To install, run `raco pkg install set-exp`.
