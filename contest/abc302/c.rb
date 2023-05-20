n, m = gets.chomp.split(" ").map(&:to_i)
s = []
n.times do
  s << gets.chomp.split("")
end

flg = false
s.permutation(n).each do |arr|
  sa_arr = []
  (0...(n-1)).each do |i|
    sa = 0
    m.times do |mm|
      if arr[i][mm] != arr[i+1][mm]
        sa += 1
      end
    end
    sa_arr << sa

  end
  flg = true if sa_arr.all? {|aaa| aaa == 1}
end

puts flg ? "Yes" : "No"