n, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

l = 0
r = n - 1

loop do
  mid = (l+r) / 2

  if x < arr[mid]
    r = mid - 1
  elsif x > arr[mid]
    l = mid + 1
  else
    puts mid + 1
    break
  end
end
