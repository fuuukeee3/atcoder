arr = []
3.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

aaa = [0]
bbb = []
arr[0].each do |c|
  bbb << c - aaa[0]
end

3.times do |i|
  next if i.zero?
  aaa << arr[i][0] - bbb[0]
end

flg = true
(0..2).each do |i|
  (0..2).each do |j|
    flg = false unless arr[i][j] == aaa[i] + bbb[j]
  end
end

puts flg ? "Yes" : "No"
