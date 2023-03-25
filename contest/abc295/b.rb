r, c = gets.chomp.split(" ").map(&:to_i)
arr = []
r.times do
  arr << gets.chomp.split("")
end

(0...r).each do |i|
  (0...c).each do |j|
    if ("1".."9").to_a.include?(arr[i][j])
      bomb = arr[i][j].to_i
      arr[i][j] = '.'
      (0...r).each do |ii|
        (0...c).each do |jj|
          next if (i - ii).abs + (j - jj).abs > bomb
          next unless arr[ii][jj] == '#'

          arr[ii][jj] = '.'
        end
      end
    end

  end
end

arr.each do |a|
  puts a.join("")
end