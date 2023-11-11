n = gets.chomp.to_i
arr = Array.new(100) { 0 }
n.times do
  d = gets.chomp.to_i
  arr[d - 1] += 1
end

arr.delete(0)
p arr.size
