n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
q = gets.chomp.to_i

q.times do
  a, b = gets.chomp.split(" ").map(&:to_i)

  if arr.index(a) < arr.index(b)
    puts a
  else
    puts b
  end
end
