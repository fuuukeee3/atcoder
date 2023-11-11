n, m = gets.chomp.split(" ").map(&:to_i)
arr = []
hash = {}
m.times do
  p, y = gets.chomp.split(" ").map(&:to_i)
  arr << [p, y]
  (hash[p] ||= []) << y
end

hash.transform_values! { |val| val.sort }
results = {}
hash.each do |pref, years|
  years.each_with_index do |year, index|
    results[year] = sprintf("%06d%06d", pref, index + 1)
  end
end

arr.each do |a|
  puts results[a[1]]
end
