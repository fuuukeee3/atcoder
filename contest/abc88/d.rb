# 0:下 1:右 2:上 3:左
# dh.zip(dw) => [[1,0], [0,1], [-1, 0], [0, -1]]
dh = [1, 0, -1, 0,]
dw = [0, 1, 0, -1]

h, w = gets.chomp.split(" ").map(&:to_i)
s = []
h.times do
  s << gets.chomp.split("")
end

q = []
dist = Array.new(h) { Array.new(w) { -1 } } # 各頂点の最短経路を格納

q << [0, 0]
dist[0][0] = 0

while q.size > 0
  x, y = q.shift

  dh.zip(dw).each do |dx, dy|
    nx, ny = [x + dx, y + dy]

    if nx < 0 || nx >= h || ny < 0 || ny >= w
      next
    end

    if s[nx][ny] == '#'
      next
    end

    if dist[nx][ny] != -1
      next
    end

    q << [nx, ny]
    dist[nx][ny] = dist[x][y] + 1
  end
end

white = s.map { |ss| ss.count { |sss| sss == '.' } }.sum

if dist[h - 1][w - 1] != -1
  puts white - dist[h - 1][w - 1] - 1
else
  puts -1
end