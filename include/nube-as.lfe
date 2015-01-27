(eval-when-compile
  (defun get-api-funcs ()
    '((describe-groups 0) (describe-groups 1) (describe-groups 2) (describe-groups 4)
      (set-desired-capacity 2) (set-desired-capacity 3) (set-desired-capacity 4)
      (describe-launch-configs 0) (describe-launch-configs 1) (describe-launch-configs 2)
      (describe-launch-configs 4)
      (describe-instances 0) (describe-instances 1) (describe-instances 2)
      (describe-instances 4)
      (terminate-instance 1) (terminate-instance 2) (terminate-instance 3))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_as)))

(generate-api)
