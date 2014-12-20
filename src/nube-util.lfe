(defmodule nube-util
  (export all))

(defun get-nube-version ()
  (lutil:get-app-src-version "src/nube.app.src"))

(defun get-versions ()
  (++ (lutil:get-version)
      `(#(nube ,(get-nube-version)))))

(defun make-credentials (access-id secret-id)
  (: erlcloud_ec2 new access-id secret-id))
