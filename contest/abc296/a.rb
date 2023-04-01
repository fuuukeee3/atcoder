n = gets.chomp.to_i
s = gets.chomp.split("")

flg = true
before = s[0]
(1...s.size).each do |i|
  if before == s[i]
    flg = false
  end
  before = s[i]
end

puts flg ? "Yes" : "No"