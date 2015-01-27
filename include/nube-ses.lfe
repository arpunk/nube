(eval-when-compile
  (defun get-api-funcs ()
    '((send-mail 4) (send-mail 5) (send-mail 6))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_ses)))

(generate-api)
