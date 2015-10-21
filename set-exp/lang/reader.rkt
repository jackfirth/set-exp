(module reader syntax/module-reader
  #:language read
  #:wrapper1
  (lambda (t)
    (list* '(require (only-in racket/set set))
           '(require set-exp/lang)
           (t)))
  #:wrapper2
  (let ((send-readtable
         (make-readtable (current-readtable)
                         #\{
                         'terminating-macro
                         (lambda (ch in src line col position)
                           (define s (read-syntax/recursive src in ch #f))
                           (syntax-case s ()
                             [(item ...)
                              (datum->syntax s (cons 'set (syntax-e s)))])))))
    (lambda (in rd stx?)
      (parameterize ((current-readtable send-readtable))
	(if stx?
	    (rd in)
	    (syntax->datum (rd in)))))))
