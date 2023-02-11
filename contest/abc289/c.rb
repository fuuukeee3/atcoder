n, m = gets.chomp.split(" ").map(&:to_i)
syugo_arr = []
m.times do
  c = gets.chomp.to_i
  syugo_arr << gets.chomp.split(" ").map(&:to_i)
end

count = 0
arr1 = (1..n).to_a
[0, 1].repeated_permutation(m).each do |per|
  arr2 = []
  per.each_with_index do |p, index|
    if p == 1
      arr2.concat(syugo_arr[index])
    end
  end
  if (arr1 - arr2).size == 0
    count += 1
  end
end

puts count