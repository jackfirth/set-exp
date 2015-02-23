#lang scribble/manual

@(require scribble/eval
          (for-label set-exp
                     racket/base))

@(define set-exp-eval (make-base-eval))
@(set-exp-eval '(require "main.rkt"))
@(define-syntax-rule (set-exp-examples datum ...)
   (examples #:eval set-exp-eval datum ...))

@title{Compact Annotations}

@defmodule[set-exp]


@author[@author+email["Jack Firth" "jackhfirth@gmail.com"]]

source code: @url["https://github.com/jackfirth/set-exp"]
