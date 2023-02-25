n, q = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i).sort
q.times do
  x = gets.chomp.to_i
  index = arr.bsearch_index { |a| a >= x }
  if index.nil?
    puts 0
  else
    puts arr[index..-1].size
  end
end