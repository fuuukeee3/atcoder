s = gets.chomp
s.gsub!("ch", "")
s.gsub!("o", "")
s.gsub!("k", "")
s.gsub!("u", "")

puts s == "" ? "YES" : "NO"
