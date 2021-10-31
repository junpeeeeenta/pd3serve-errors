(defsystem pd3serve-errors-test
  :author "Fernando Borretti"
  :license "LLGPL"
  :description "pd3serve-errors tests"
  :depends-on (:pd3serve-errors
               :clack
               :hunchentoot
               :fiveam
               :drakma)
  :components ((:module "t"
                :serial t
                :components
                ((:file "app")
                 (:file "pd3serve-errors")))))
