arr = []
8.times do
  arr << gets.chomp.split("")
end

arr.each_with_index do |a, num_index|
  alpha_index = a.find_index("*")
  next unless alpha_index

  puts ('a'..'h').to_a[alpha_index] + (8 - num_index).to_s
end