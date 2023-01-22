n, p, q, r, s = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

a = ((p - 1)...q).to_a
b = ((r - 1)...s).to_a
ab = a.zip(b)

ab.each do |i|
  arr[i[0]], arr[i[1]] = arr[i[1]], arr[i[0]]
end

puts arr.join(" ")
