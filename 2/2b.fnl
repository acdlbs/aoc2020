(let [tbl {}]
  (each [line (io.lines "./data.txt")]
    (table.insert tbl line))
  (local size {})
  (for [i 1 (length tbl)]
       (let [(_ _ pos-a pos-b letter password) (string.find (. tbl i) "(%d*)-(%d*) (.*): (.*)")]
           (let [a b] [(string.sub password pos-a pos-a) (string.sub password pos-b pos-b)]
                (if  (= a letter)
                     ))))
  (print (length size)))
