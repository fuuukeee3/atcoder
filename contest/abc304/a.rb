n = gets.chomp.to_i
arr = []
min = nil
min_index = nil
n.times do |i|
  s, a = gets.chomp.split(" ")
  arr << [s, a.to_i]

  if min.nil?
    min = a.to_i
    min_index = i
  else
    if a.to_i < min
      min = a.to_i
      min_index = i
    end
  end
end

(min_index...n).each do |i|
  puts arr[i][0]
end

(0...min_index).each do |i|
  puts arr[i][0]
end