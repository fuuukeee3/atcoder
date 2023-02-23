n, q = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
arr.each_with_index do |a, i|
  (hash[a] ||= []) << i
end

q.times do
  x, k = gets.chomp.split(" ").map(&:to_i)
  if hash[x].nil?
    puts -1
  else
    if hash[x][k - 1].nil?
      puts -1
    else
      puts hash[x][k - 1] + 1
    end
  end
end
