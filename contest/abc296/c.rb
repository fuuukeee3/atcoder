require 'set'
n, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

set = Set.new
arr.each do |a|
  set << x + a
end

flg = false
arr.each do |a|
  if set.include?(a)
    flg = true
    break
  end
end

puts flg ? "Yes" : "No"