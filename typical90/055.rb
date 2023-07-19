n, p2, q = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map { |a| a.to_i % p2 }

# rubyだとwhileでやる必要がありそう
count = 0
0.upto(n - 1) do |i1|
  0.upto(i1 - 1).each do |i2|
    0.upto(i2 - 1).each do |i3|
      0.upto(i3 - 1).each do |i4|
        0.upto(i4 - 1).each do |i5|
          count += 1 if arr[i1] * arr[i2] * arr[i3] * arr[i4] * arr[i5] % p2 == q
        end
      end
    end
  end
end

puts count