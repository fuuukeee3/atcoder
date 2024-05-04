s = gets.chomp.split("")
t = gets.chomp.split("")

count = 1
answer = []
loop do
  break if t.size.zero?

  tmp1 = t.shift
  if tmp1 == s[0]
    s.shift
    answer << count
  end

  count += 1
end

puts answer.join(" ")
