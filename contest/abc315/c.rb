n = gets.chomp.to_i
hash = {}
n.times do
  f, s = gets.chomp.split(" ").map(&:to_i)
  if hash[f].nil?
    hash[f] = [s]
  elsif hash[f].size == 1
    if s >= hash[f][0]
      hash[f][1] = hash[f][0]
      hash[f][0] = s
    else
      hash[f][1] = s
    end
  else
    if s >= hash[f][0]
      hash[f][1] = hash[f][0]
      hash[f][0] = s
    elsif s >= hash[f][1]
      hash[f][1] = s
    end
  end
end

other_tops = []
same_max = 0
hash.each do |k, v|
  if v.size >= 2
    same_max = [same_max, v[0] + (v[1] / 2)].max
  end
  other_tops << v[0]
end

other_max = other_tops.sort.reverse[0..1].sum

puts [same_max, other_max].max
