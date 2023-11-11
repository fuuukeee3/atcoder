dh = [1, 0, -1, 0, 1, -1, -1, 1]
dw = [0, 1, 0, -1, 1, 1, -1, -1]

n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.split("").map(&:to_i)
end

results = []
n.times do |i|
  n.times do |j|
    8.times do |dd|
      h = i
      w = j
      result = ""
      n.times do |k|
        result += arr[h][w].to_s
        h += dh[dd]
        if h < 0
          h += n
        elsif h >= n
          h -= n
        end

        w += dw[dd]
        if w < 0
          w += n
        elsif w >= n
          w -= n
        end
      end
      results << result
    end
  end
end

puts results.map(&:to_i).max