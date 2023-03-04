n, q = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new {0}
q.times do
  arr = gets.chomp.split(" ").map(&:to_i)
  case arr[0]
  when 1
    hash[arr[1]] += 1
  when 2
    hash[arr[1]] += 2
  when 3
    puts hash[arr[1]] >= 2 ? "Yes" : "No"
  end
end