n = gets.chomp.to_i
arr = []
n.times do
  s = gets.chomp
  hash = Hash.new { 0 }
  s.split("").each do |ss|
    hash[ss] += 1
  end
  arr << hash
end

ans_hash = {}
arr.map { |a| a.keys }.reduce { |total, a| total = total & a }.sort.each do |ss|
  ans_hash[ss] = 51
end

arr.each do |a|
  ans_hash.keys.each do |key|
    ans_hash[key] = [ans_hash[key], a[key]].min
  end
end

ans_hash.each do |k, v|
  print k * v
end
puts
