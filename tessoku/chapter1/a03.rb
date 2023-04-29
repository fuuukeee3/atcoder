n, k = gets.chomp.split(" ").map(&:to_i)
p = gets.chomp.split(" ").map(&:to_i)
q = gets.chomp.split(" ").map(&:to_i)

flg = false
p.each do |pp|
  q.each do |qq|
    flg =true if pp + qq == k
  end
end

puts flg ? "Yes" : "No"
