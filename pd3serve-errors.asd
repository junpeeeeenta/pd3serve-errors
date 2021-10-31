(defsystem pd3serve-errors
  :version "0.2"
  :author "Fernando Borretti"
  :license "LLGPL"
  :description "Error page middleware for Clack."
  :homepage "https://github.com/eudoxia0/pd3serve-errors"
  :depends-on (:clack
               :closer-mop
               :local-time
               :trivial-backtrace
               :djula
               :cl-ppcre)
  :components ((:module "src"
                :serial t
                :components
                ((:file "pd3serve-errors"))))
  :long-description #.(uiop:read-file-string
                       (uiop:subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op pd3serve-errors-test))))
