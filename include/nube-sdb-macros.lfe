(eval-when-compile
  (defun get-api-funcs ()
    '(;; Domains
      (create-domain 1) (create-domain 2)
      (delete-domain 1) (delete-domain 2)
      (domain-metadata 1) (domain-metadata 2)
      (list-domains 0) (list-domains 1) (list-domains 2) (list-domains 3)
      ;; Items
      (batch-put-attributes 2) (batch-put-attributes 3)
      (delete-attributes 2) (delete-attributes 3)
      (delete-attributes 4) (delete-attributes 5)
      (get-attributes 2) (get-attributes 3) (get-attributes 4) (get-attributes 5)
      (put-attributes 3) (put-attributes 4) (put-attributes 5)
      (select 1) (select 2) (select 3) (select 4)
      (select-all 1) (select-all 2) (select-all 3))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_sdb)))

(generate-api)
