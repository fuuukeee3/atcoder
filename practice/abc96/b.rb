arr = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i
k.times do
  count = 0
  max = arr.max
  arr.map! do |a|
    if a == max && count.zero?
      count += 1
      a * 2
    else
      a
    end
  end
end

puts arr.sum