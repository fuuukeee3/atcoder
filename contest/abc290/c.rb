require 'set'

n, k = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

arr = arr.to_set
(0..k).each do |i|
  unless arr.include?(i)
    puts i
    exit
  end
end

puts k