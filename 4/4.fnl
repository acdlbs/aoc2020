(let [f (assert (io.open "./data.txt"))]
  (local file (f:read "*a"))            ; you can read the whole file
  (f:close)
  ;; (print file)
  ;;  (each [a _ (string.gmatch file "(.*:.*\n)(\n)")](print a))
  ;; (let [(replaced n) (string.gsub file "(\n\n)" ", ")] {: replaced : n}
  ;;      (print replaced))
  (let [(x _) (-> (string.gsub file "(\n\n)" ", ")
                  (string.gsub "\n" ""))] {: x : _}
                  (string.gmatch "([^,]+)")))
;; (for [i 1 (length tbl)]
;;   (let [(replaced n) (string.gsub password letter "")] {: replaced : n}

;;        (let [(_ _ all) (string.find (. tbl i) "^(?=.*\bbyr\b)(?=.*\biyr\b)(?=.*\beyr\b)(?=.*\bhgt\b)(?=.*\bhcl\b)(?=.*\becl\b)(?=.*\bpid\b)(?=.*(\bcid\b)?).*$")]
;;          (print all))))

;;(print (length size))

