s = gets.chomp

flg = true

flg = false unless s.match?(/[A-Z]/)
flg = false unless s.match?(/[a-z]/)
flg = false unless s.size == s.split("").uniq.size

puts flg ? "Yes" : "No"