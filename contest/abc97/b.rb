require "prime"
x = gets.chomp.to_i
max = 1

(2..x).each do |b|
  p = 2
  loop do
    break if b ** p > x
    max = [b ** p, max].max
    p += 1
  end
end

puts max
