n, m, q = gets.chomp.split(" ").map(&:to_i)

graph = Array.new(n + 1) { [] }
m.times do
  u, v = gets.chomp.split(" ").map(&:to_i)
  (graph[u] ||= []) << v
  (graph[v] ||= []) << u
end

colors = gets.chomp.split(" ").map(&:to_i)
colors.unshift(0)

results = []
q.times do
  s = gets.chomp.split(" ").map(&:to_i)
  case s[0]
  when 1
    results << colors[s[1]]
    graph[s[1]].each do |i|
      colors[i] = colors[s[1]]
    end
  when 2
    results << colors[s[1]]
    colors[s[1]] = s[2]
  end
end

puts results.join("\n")
