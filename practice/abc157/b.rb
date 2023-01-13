arr = []
3.times do
  arr.concat(gets.chomp.split(" ").map(&:to_i))
end

n = gets.chomp.to_i
n.times do
  b = gets.chomp.to_i
  index = arr.find_index(b)
  arr[index] = nil if index
end

bingos = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6],
]

bingos.each do |bb|
  if arr[bb[0]].nil? && arr[bb[1]].nil? && arr[bb[2]].nil?
    puts "Yes"
    return
  end
end

puts "No"
