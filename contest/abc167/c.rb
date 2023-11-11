n, m, x = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

min = 100000000
[0, 1].repeated_permutation(n).to_a.each do |bit|
  total_price = 0
  argo = Array.new(m) { 0 }
  bit.each_with_index do |b, index|
    if b == 1
      total_price += arr[index][0]
      arr[index][1..].each_with_index do |a, ii|
        argo[ii] += a
      end
    end
  end

  if argo.all? { |a| a >= x }
    min = [total_price, min].min
  end
end

if min == 100000000
  puts -1
else
  puts min
end