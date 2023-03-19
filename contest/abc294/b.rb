alpha = ['.'] + ('A'..'Z').to_a
h, w = gets.chomp.split(" ").map(&:to_i)
h.times do
  arr = gets.chomp.split(" ").map(&:to_i)

  results = arr.map do |a|
    alpha[a]
  end

  puts results.join("")
end
