n = gets.chomp.to_i
s = gets.chomp.split("")

hash = {}
before = s[0]
tmp = 0
s.each do |ss|
  if before == ss
    tmp += 1
  else
    if hash[before].nil?
      hash[before] = tmp
    else
      hash[before] = [hash[before], tmp].max
    end
    tmp = 1
  end

  before = ss

end

if hash[before].nil?
  hash[before] = tmp
else
  hash[before] = [hash[before], tmp].max
end

puts hash.values.sum