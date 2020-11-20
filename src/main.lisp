(defpackage hello-roswell
  (:use :cl)
  (:export :main))
(in-package :hello-roswell)

(defun main ()
 (format t "Hello, World!"))