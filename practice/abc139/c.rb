n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

max = 0
i = 0
count = 0
while i < n - 1
  if arr[i] < arr[i + 1]
    max = [count, max].max
    count = 0
  else
    count += 1
  end
  i += 1
end

puts [max, count].max
