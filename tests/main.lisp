(defpackage hello-roswell/tests/main
  (:use :cl
        :hello-roswell
        :rove))
(in-package :hello-roswell/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :hello-roswell)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
