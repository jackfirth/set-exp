#lang scribble/manual

@(require scribble/eval
          (for-label racket/base))

@title{Set Expressions}

@defmodulelang[set-exp]

This module adds literal set syntax as a meta-language. 

@codeblock{
  > #lang set-exp racket
  > (define some-set {1 2 3 4})
  > (set-member? some-set 3)
  #t
  > (set-member? some-set 'foo)
  #f
}

@author[@author+email["Jack Firth" "jackhfirth@gmail.com"]]

source code: @url["https://github.com/jackfirth/set-exp"]
