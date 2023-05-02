n, q = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(n) { 0 }
q.times do
  l, r, t = gets.chomp.split(" ").map(&:to_i)
  (l..r).each do |i|
    arr[i - 1] = t
  end
end

puts arr.join("\n")