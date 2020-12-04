(let [tbl {}]
  (each [line (io.lines "./data.txt")]
    (table.insert tbl line))
  (local size {})
  (for [i 1 (length tbl)]
    (each [a b c d (string.gmatch (. tbl i) "(%d*)-(%d*) (.*): (.*)")]
      (let [(replaced n) (string.gsub d c "")] {: replaced : n}
           (if (and (<= (tonumber a) n) (<= n (tonumber b)))
               (table.insert size n)))))
  (print (length size)))
