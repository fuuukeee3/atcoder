require 'set'
n = gets.chomp.to_i
hash = {}
max = -1
result = -1
n.times do |i|
  s, t = gets.chomp.split(" ")
  if hash[s].nil?
    hash[s] = t.to_i

    if max < t.to_i
      max = t.to_i
      result = i + 1
    end
  end
end

p result