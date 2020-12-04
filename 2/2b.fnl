(let [tbl {}]
  (each [line (io.lines "./data.txt")]
    (table.insert tbl line))
  (local size {})
  (for [i 1 (length tbl)]
       (let [(_ _ pos-a pos-b letter password) (string.find (. tbl i) "(%d*)-(%d*) (.*): (.*)")]
         (let  [[a b] [(string.sub password (tonumber pos-a) (tonumber pos-a)) (string.sub password (tonumber pos-b) (tonumber pos-b))]]
           (if  (or (= a letter) (= b letter))
                (do
                  (if (and (= a letter) (not= b letter))
                      (table.insert size password))
                  (if (and (not= a letter) (= b letter))
                      (table.insert size password)))))))
                
  (print (length size)))

