n, k = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.to_i
end

arr.sort!

i = 0
ans = nil
while i <= n - k
  trees = arr[i, k]
  sa = trees[-1] - trees[0]
  if ans.nil? || sa < ans
    ans = sa
  end
  i += 1
end

puts ans
