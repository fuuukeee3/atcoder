alpha = %W[. A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
h, w = gets.chomp.split(" ").map(&:to_i)
h.times do
  arr = gets.chomp.split(" ").map(&:to_i)

  results = arr.map do |a|
    alpha[a]
  end

  puts results.join("")
end
