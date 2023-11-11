h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
h.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

(0...h).each do |i1|
  ((i1 + 1)...h).each do |i2|
    (0...w).each do |j1|
      ((j1 + 1)...w).each do |j2|
        if arr[i1][j1] + arr[i2][j2] > arr[i2][j1] + arr[i1][j2]
          puts "No"
          exit
        end
      end
    end
  end
end

puts "Yes"