s = gets.chomp.split("")
hash = {}
s.each do |ss|
  if hash.key?(ss)
    hash[ss] += 1
  else
    hash[ss] = 1
  end
end

ans = {}
hash.each do |k, v|
  if ans.key?(v)
    ans[v] += 1
  else
    ans[v] = 1
  end
end

puts ans.values.all? {|a| a == 2} ? "Yes" : "No"