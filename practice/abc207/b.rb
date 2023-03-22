a, b, c, d = gets.chomp.split(" ").map(&:to_i)

if b > c
  puts -1
  exit
end

count = 0
aa = a.dup
cc = 0
loop do
  break if aa <= cc * d

  aa += b
  cc += c
  count += 1
end

puts count