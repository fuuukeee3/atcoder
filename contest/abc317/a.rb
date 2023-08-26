n, h, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

arr.each_with_index do |a, i|
  if h + a >= x
    puts i + 1
    exit
  end
end