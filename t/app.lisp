(in-package :cl-user)
(defpackage pd3serve-errors-test.app
  (:use :cl)
  (:export :start
           :stop))
(in-package :pd3serve-errors-test.app)

(defparameter *app*
  (lambda (env)
    (if (string= (getf env :path-info) "/no-error")
        '(200 (:content-type "text/plain") ("Nothing to see here"))
        (error "test"))))

(defparameter *handler* nil)

(defun start ()
  (setf *handler*
        (clack:clackup
         (funcall pd3serve-errors:*clack-error-middleware*
                  *app*
                  :debug t)
         :port 8000)))

(defun stop ()
  (clack:stop *handler*))
