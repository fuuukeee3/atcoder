def complete_time(children, x)
  return 0 if children[x].nil?

  max_time = 0
  children[x].each do |c|
    receive_time = complete_time(children, c) + 1
    max_time = [max_time, receive_time].max
  end
  max_time
end

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

children = []
arr.each_with_index do |a, index|
  parent = a
  (children[a] ||= []) << index + 1
end

puts complete_time(children, 0)
