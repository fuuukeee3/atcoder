n, m = gets.chomp.split(" ").map(&:to_i)
syugo_arr = []
m.times do
  c = gets.chomp.to_i
  syugo_arr << gets.chomp.split(" ").map(&:to_i)
end

count = 0
arr1 = (1..n).to_a
[true, false].repeated_permutation(m).each do |per|
  arr2 = []
  per.each_with_index do |p, index|
    arr2.concat(syugo_arr[index]) if p
  end
  count += 1 if (arr1 - arr2).size == 0
end

puts count