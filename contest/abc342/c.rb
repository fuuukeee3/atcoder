n = gets.chomp.to_i
s = gets.chomp
q = gets.chomp.to_i

str = "abcdefghijklmnopqrstuvwxyz"
q.times do
  c, d = gets.chomp.split(" ")
  str.tr!(c, d)
end

result = s.split("").map do |ss|
  str[ss.codepoints[0] - 97]
end
puts result.join("")
