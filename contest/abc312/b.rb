n, m = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp
end

results = []
(0..(n - 9)).each do |h|
  (0..(m - 9)).each do |w|
    tmp = arr[h...(h + 9)].map { |a| a[w...(w + 9)] }
    next unless tmp[0].start_with?("###.")
    next unless tmp[1].start_with?("###.")
    next unless tmp[2].start_with?("###.")
    next unless tmp[3].start_with?("....")
    next unless tmp[5].end_with?("....")
    next unless tmp[6].end_with?(".###")
    next unless tmp[7].end_with?(".###")
    next unless tmp[8].end_with?(".###")

    results << [h + 1, w + 1]
  end
end

results.each do |r|
  puts r.join(" ")
end