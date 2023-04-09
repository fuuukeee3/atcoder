a, b = gets.chomp.split(" ").map(&:to_i)
ans = a / 2.0 + b / 2.0
if ans.to_s.split(".")[1] == "0"
  puts ans.floor
else
  puts "IMPOSSIBLE"
end