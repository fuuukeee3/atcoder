n, k = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)
q = gets.chomp.to_i
q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  max_c = (r - l + 1) - k + 1

  p arr[(l - 1)...r]
end
