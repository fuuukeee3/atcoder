s = gets.chomp
arr = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

results = []
s.split("").reverse.each_with_index do |ss, index|
  results << (26 ** index * (arr.find_index(ss) + 1))
end

puts results.sum
