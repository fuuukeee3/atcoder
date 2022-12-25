# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

q = gets.chomp.to_i

q.times do
  query = gets.chomp.split(" ").map(&:to_i)
  if query[0] == 1
    arr[query[1] - 1] = query[2]
  else
    puts arr[query[1] - 1]
  end
end
