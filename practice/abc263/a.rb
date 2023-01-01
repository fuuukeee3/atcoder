arr = gets.chomp.split(" ").map(&:to_i)
hash = {}
arr.each do |a|
  if hash[a].nil?
    hash[a] = 1
  else
    hash[a] += 1
  end
end

if hash.keys.size != 2
  puts "No"
  return
end

a = hash.values
if a[0] != 3 && a[0] != 2
  puts "No"
  return
end

puts "Yes"
