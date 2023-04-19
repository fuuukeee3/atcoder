n, t = gets.chomp.split(" ").map(&:to_i)
ans = 1001
n.times do
  c, tt = gets.chomp.split(" ").map(&:to_i)
  if tt <= t
    ans = [ans, c].min
  end
end

puts ans == 1001 ? "TLE" : ans
