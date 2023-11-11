n, q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp

count = 0
counts = [0]
s.split("").each_with_index do |ss, index|
  if index.zero?
    counts << 0
    next
  end

  if ss == "C" && s[index - 1] == "A"
    count += 1
  end
  counts << count
end

q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  puts counts[r] - counts[l]
end
