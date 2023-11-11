n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

flg = true
b.each do |bb|
  index = a.find_index(bb)
  if index.nil?
    flg = false
    break
  else
    a.delete_at(index)
  end
end

puts flg ? "Yes" : "No"