require "set"

n, m = gets.chomp.split(" ").map(&:to_i)
hash = {}
m.times do |mm|
  u, v = gets.chomp.split(" ").map(&:to_i)
  (hash[u] ||= []) << v
end

result = Set.new
hash.each do |k, v|
  v_size = v.size
  next if v_size < 2

  (0...v_size).each do |i|
    (1..(v_size - 1)).each do |j|
      val1 = v[i]
      val2 = v[j]
      if !hash[val1].nil? && hash[val1].include?(val2)
        result << [k, val1, val2].sort
        next
      end
      if !hash[val2].nil? && hash[val2].include?(val1)
        result << [k, val1, val2].sort
        next
      end
    end
  end
end

p result.size
