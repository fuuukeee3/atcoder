n = gets.chomp.to_i
arr = []
hash = {}
n.times do
  s, p = gets.chomp.split(" ")
  arr << "#{s}_#{p}"
  (hash[s] ||= []) << p.to_i
end

results = []
hash.sort.each do |a|
  a[1].sort.reverse.each do |aa|
    results << "#{a[0]}_#{aa}"
  end
end

results.each do |r|
  puts arr.find_index(r) + 1
end
