# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

q = gets.chomp.to_i

q.times do |qq|
  query = gets.chomp.split(" ")
  if query[0] == "1"
    arr[query[1].to_i - 1] = query[2].to_i
  else
    puts arr[query[1].to_i - 1]
  end
end
