n = gets.chomp.to_i
s = gets.chomp

arr = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

results = []
s.split("").each do |ss|
  index = arr.find_index(ss)
  results << arr[(index + n) % 26]
end

puts results.join("")
