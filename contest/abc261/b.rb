n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.split("")
end

i = 0
while i < n
  j = 0
  while j < n
    case arr[i][j]
    when "-"
    when "W"
      if arr[j][i] != "L"
        puts "incorrect"
        return
      end
    when "L"
      if arr[j][i] != "W"
        puts "incorrect"
        return
      end
    when "D"
      if arr[j][i] != "D"
        puts "incorrect"
        return
      end
    end
    j += 1
  end
  i += 1
end

puts "correct"
