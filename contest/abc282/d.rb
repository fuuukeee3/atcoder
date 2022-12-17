def nibu_graph?(hash, a, b)
  hash[a] << b

  result = true
  hash2 = {}
  q = []
  hash.each do |k, v|
    hash2[k] = 0
  end

  hash[a].delete(b)
  result
end

n, m = gets.chomp.split(" ").map(&:to_i)
hash = {}
m.times do |m|
  a, b = gets.chomp.split(" ").map(&:to_i)
  (hash[a] ||= []) << b
  (hash[b] ||= []) << a
end

count = 0
(1..n).each do |i|
  ((i + 1)..n).each do |j|
    unless hash[i].include?(j)
      if nibu_graph?(hash, i, j)
        puts "#{i}, #{j}"
      end
    end
  end
end
