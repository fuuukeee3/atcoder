n, t = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
x = gets.chomp.split(" ").map(&:to_i)

# pluses = []
# minuses = []
# s.each_with_index do |ss, index|
#   if ss == "1"
#     pluses << index
#   else
#     minuses << index
#   end
# end

moves = []
x.each_with_index do |xx, index|
  hash = {
    start: xx,
    end: nil,
    direction: nil,
  }
  if s[index] == "1"
    hash[:end] = xx + t
    hash[:direction] = :plus
  else
    hash[:end] = xx - t
    hash[:direction] = :minus
  end
  moves << hash
end

# p pluses
# p minuses
# p moves
minuses = moves.select { |m| m[:direction] == :minus }
# p minuses

count = 0
moves.each_with_index do |move, index|
  next if move[:direction] == :minus

  minuses.each do |minus|
    if move[:end] >= minus[:end] && move[:start] < minus[:start]
      # p [move, moves[t]]
      count += 1
    end
  end
end

puts count
