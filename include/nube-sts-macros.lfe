(eval-when-compile
  (defun get-api-funcs ()
    '((assume-role 4) (assume-role 5))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_sts)))

(generate-api)
