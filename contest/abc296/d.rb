n, m = gets.chomp.split(" ").map(&:to_i)

if n * n < m
  puts -1
  exit
end
