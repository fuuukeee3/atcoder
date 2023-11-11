s = gets.chomp
n = gets.chomp.to_i
n.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  s = [s[0...l-1], s[l-1...r].reverse, s[r..-1]].join("")
end
puts s
