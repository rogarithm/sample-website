#lang racket/base
(require pollen/decode)

(define exclusion-mark-attr '(decode "exclude"))
(define (root . elems)
	(decode `(root ,@elems)
          #:txexpr-elements-proc detect-paragraphs 
          #:string-proc (compose1 smart-quotes smart-dashes)
          #:exclude-tags '(pre)
          #:exclude-attrs (list exclusion-mark-attr)))

;----------------------------------------------------------
; tag functions

(provide (all-defined-out))

(define code-tag 'span)
(define code-class "code")
(define (code . elems)
  `(,code-tag ((class ,code-class) ,exclusion-mark-attr) ,@elems))

(define codeblock-tag 'pre)
(define (codeblock . elems)
  `(,codeblock-tag ((class ,code-class)) ,@elems))

(define title-tag 'h1)
(define (title . elems)
  `(,title-tag ,@elems))

(define section-tag 'h2)
(define (section . elems)
  `(,section-tag ,@elems))

(define subsection-tag 'h3)
(define (bold . elems)
	`(,subsection-tag ,@elems))

;(define (strong . elems)
;	`('strong ,@elems))

(define uncertain-tag 'em)
(define (uc . elems)
	`(,uncertain-tag ,@elems))
