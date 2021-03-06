(let [tbl {}]
  (each [line (io.lines "./data.txt")]
    (table.insert tbl line))
  (local size {})
  (for [i 1 (length tbl)]
       (let [(_ _ min max letter password) (string.find (. tbl i) "(%d*)-(%d*) (.*): (.*)")]
           (let [(replaced n) (string.gsub password letter "")] {: replaced : n}
                (if (and (<= (tonumber min) n) (<= n (tonumber max)))
                    (table.insert size n)))))
  (print (length size)))
