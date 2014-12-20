(eval-when-compile
  (defun get-api-funcs ()
    '((create-trail 3) (create-trail 4) (create-trail 5) (create-trail 6)
      (delete-trail 1) (delete-trail 2)
      (describe-trails 0) (describe-trails 1) (describe-trails 2)
      (get-trail-status 1) (get-trail-status 2)
      (start-logging 1) (start-logging 2)
      (stop-logging 1) (stop-logging 2)
      (update-trail 4) (update-trail 5) (update-trail 6)
      (ct-request 3))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_cloudtrail)))

(generate-api)
