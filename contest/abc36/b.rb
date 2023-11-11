n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp
end

n.times do |a|
  n.times do |b|
    print arr[n-b-1][a]
  end
  puts
end