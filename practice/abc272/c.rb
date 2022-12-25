n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

odds = arr.select { |a| a.odd? }.sort
evens = arr.select { |a| a.even? }.sort

if odds.size < 2 && evens.size < 2
  puts -1
  return
end

odd = odds[-1].to_i + odds[-2].to_i
even = evens[-1].to_i + evens[-2].to_i

if odd > even
  puts odd
else
  puts even
end
