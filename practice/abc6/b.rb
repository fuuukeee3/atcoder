require 'set'
n = gets.chomp.to_i

tri = {}
(1..n).each do |i|
  if i == 1 || i == 2
    tri[i] = 0
    next
  end

  if i == 3
    tri[i] = 1
    next
  end

  tri[i] = tri[i - 1] + tri[i - 2] + tri[i - 3]
end

puts tri[n] % 10007