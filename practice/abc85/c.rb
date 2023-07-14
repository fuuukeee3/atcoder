n, y = gets.chomp.split(" ").map(&:to_i)

(0..n).each do |a|
  (0..n).each do |b|
    next if a + b > n
    c = n - a - b

    if 10000 * a + 5000 * b + 1000 * c == y
      puts [a, b, c].join(" ")
      exit
    end
  end
end

puts "-1 -1 -1"