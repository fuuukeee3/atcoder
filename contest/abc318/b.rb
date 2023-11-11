n = gets.chomp.to_i
arr = []
sheets = Array.new(100) { Array.new(100) { false } }

n.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

arr.each do |ar|
  a, b, c, d = ar
  (c...d).each do |v|
    (a...b).each do |w|
      sheets[v][w] = true
    end
  end
end

puts sheets.sum { |s| s.count { |ss| ss == true } }
