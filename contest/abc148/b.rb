n = gets.chomp.to_i
arr = gets.chomp.split(" ")

(0...n).each do |i|
  arr.each do |a|
    print a[i]
  end
end

puts