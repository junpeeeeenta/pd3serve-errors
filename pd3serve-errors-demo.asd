(in-package :cl-user)
(defpackage pd3serve-errors-demo-asd
  (:use :cl :asdf))
(in-package :pd3serve-errors-demo-asd)

(defsystem pd3serve-errors-demo
  :author "Fernando Borretti"
  :license "LLGPL"
  :depends-on (:pd3serve-errors
               :cl-markup)
  :components ((:module "demo"
                :components
                ((:file "app"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
