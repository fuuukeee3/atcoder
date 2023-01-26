n, q = gets.chomp.split(" ").map(&:to_i)
graph1 = Array.new(n + 1) { [] }
graph2 = Array.new(n + 1) { [] }
q.times do
  s = gets.chomp.split(" ").map(&:to_i)
  case s[0]
  when 1
    graph1[s[1]] << s[2]
    graph2[s[2]] << s[1]
  when 2
    graph1[s[1]].concat(graph2[s[1]])
  when 3
    tmp = []

    graph1[s[1]].each do |g|
      tmp.concat(graph1[g])
    end
    graph1[s[1]].concat(tmp)
    tmp.each do |t|
      graph2[t].concat([s[1]])
    end
  end
end

# p graph1
# p graph2
graph1[1..].each do |g|
  (1..n).each do |i|
    print g.include?(i) ? "Y" : "N"
  end
  puts
end
