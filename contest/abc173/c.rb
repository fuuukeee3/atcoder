h, w, k = gets.chomp.split(" ").map(&:to_i)
arr = []
h.times do
  arr << gets.chomp.split("")
end

h_select = [0, 1].repeated_permutation(h)
w_select = [0, 1].repeated_permutation(w)

count = 0
h_select.each do |hh|
  w_select.each do |ww|
    black = 0
    hh.each_with_index do |hhh, hi|
      ww.each_with_index do |www, wi|
        if hhh == 0 && www == 0 && arr[hi][wi] == '#'
          black += 1
        end
      end
    end
    count += 1 if black == k
  end
end

puts count