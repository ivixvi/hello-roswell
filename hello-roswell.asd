(defsystem "hello-roswell"
  :version "0.1.0"
  :author "ivixvi"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "hello-roswell/tests"))))

(defsystem "hello-roswell/tests"
  :author "ivixvi"
  :license ""
  :depends-on ("hello-roswell"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for hello-roswell"
  :perform (test-op (op c) (symbol-call :rove :run c)))
