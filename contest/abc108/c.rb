n, k = gets.chomp.split(" ").map(&:to_i)
ans = 0
count1 = 0
(1..n).each do |nn|
  count1 += 1 if nn % k == 0
end

ans += count1 ** 3


count2 = 0
if k.even?
  (1..n).each do |nn|
    count2 += 1 if nn % k == k / 2
  end
  ans += count2 ** 3
end

puts ans