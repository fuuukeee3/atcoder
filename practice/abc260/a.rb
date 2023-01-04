s = gets.chomp
hash = {}
s.split("").each do |ss|
  if hash[ss].nil?
    hash[ss] = 1
  else
    hash[ss] += 1
  end
end

if hash.keys.size == 1
  puts -1
else
  hash.each do |k, v|
    if v == 1
      puts k
      return
    end
  end
end
