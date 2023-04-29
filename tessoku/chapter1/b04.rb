n = gets.chomp.split("").reverse
sum = 0
n.each_with_index do |nn, index|
  if nn == "1"
    sum += 2 ** index
  end
end

puts sum