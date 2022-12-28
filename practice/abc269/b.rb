arr1 = []
arr2 = []
10.times do |i|
  s = gets.chomp
  index = s.index("#")
  if index
    arr1 << [i + 1, index + 1]
  end

  si = 9
  while 0 <= si
    if s[si] == "#"
      arr2 << [i + 1, si + 1]
      break
    end
    si -= 1
  end
end

puts "#{arr1[0][0]} #{arr2[-1][0]}"
puts "#{arr1[0][1]} #{arr2[-1][1]}"
