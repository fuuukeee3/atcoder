n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

a.sort!
div, mod = a.sum.divmod(n)

convert = Array.new(n-mod) {div} + Array.new(mod) {div+1}

total = 0
(0...n).each do |i|
  total += (a[i] - convert[i]).abs
end

puts total / 2