n, k, q = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(n) { k }

q.times do
  a = gets.chomp.to_i
  arr[a - 1] += 1
end

arr.each do |a|
  if a - q > 0
    puts "Yes"
  else
    puts "No"
  end
end