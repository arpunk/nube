(defmodule nube-util
  (export all))

(include-lib "nube/include/nube-aws.lfe")

(defun get-nube-version ()
  (lutil:get-app-src-version "src/nube.app.src"))

(defun get-versions ()
  (++ (lutil:get-version)
      `(#(nube ,(get-nube-version)))))
