n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

hash = Hash.new {0}
arr.each do |a|
  hash[a] += 1
end

hash.each do |k, v|
  if v == 3
    puts k
    exit
  end
end