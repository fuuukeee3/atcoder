n = gets.chomp.to_i
n.times do
  arr = gets.chomp.split(" ").map(&:to_i)
  result = []
  arr.each_with_index do |a, i|
    if a == 1
      result << i + 1
    end
  end
  puts result.join(" ")
end
