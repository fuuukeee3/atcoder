n = gets.chomp.to_i
source = gets.chomp.split(" ").map(&:to_i)
arr = source.dup

loop do
  if arr.size == 2
    arr = arr.each_slice(2)
    break
  else
    arr = arr.each_slice(2).map(&:max)
  end
end

target = arr.to_a[0].min
puts source.find_index(target) + 1