h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
h.times do |i|
  s = gets.chomp.split("")
  s.each_with_index do |ss, index|
    if ss == 'o'
      arr << [i, index]
    end
  end
end

puts (arr[0][0] - arr[1][0]).abs + (arr[0][1] - arr[1][1]).abs