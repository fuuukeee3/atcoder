require "set"
n = gets.chomp.to_i

arr = []
n.to_s(2).split("").reverse_each.with_index do |nn, index|
  if nn == "1"
    arr << 2 ** index
  end
end

set = Set.new
set << 0
(1..arr.size).each do |i|
  arr.combination(i) do |c|
    set << c.sum
  end
end

set.sort.each do |s|
  puts s
end
