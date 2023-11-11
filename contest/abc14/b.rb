n, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

sum = 0
x.to_s(2).reverse.split("").each_with_index do |i, index|
  if i == "1"
    sum += arr[index]
  end
end
puts sum