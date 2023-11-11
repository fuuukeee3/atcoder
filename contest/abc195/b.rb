a, b, w = gets.chomp.split(" ").map(&:to_i)

# over = (ww / a.to_f).floor
# under = (ww / b.to_f).ceil

# if under > over
#   puts "UNSATISFIABLE"
# else
#   puts under, over
# end

w *= 1000
min = 10000000
max = -1

(0..1000000).each do |i|
  if a * i <= w && b * i >= w
    min = [min, i].min
    max = [max, i].max
  end
end

if min == 10000000 || max == -1
  puts "UNSATISFIABLE"
else
  puts min, max
end
