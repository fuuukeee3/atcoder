# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

s = gets.chomp

count = 0
i = 0
loop do
  count += 1

  if s[i] == "0" && s[i + 1] == "0"
    i += 2
  else
    i += 1
  end
  if i >= s.size
    break
  end
end

puts count
