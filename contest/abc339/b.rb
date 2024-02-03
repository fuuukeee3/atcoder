# flgがtrueなら時計回り
def tenkan(muki, flg)
  if flg
    tenkan = muki + 1 
    tenkan = 1 if tenkan == 5
  else
    tenkan = muki - 1
    tenkan = 4 if tenkan == 0
  end
  
  tenkan
end

def move(muki, current, h, w)
  case muki
  when 1
    t1 = current[0] - 1
    t1 = h - 1 if t1 == -1
    [t1, current[1]]
  when 2
    t2 = current[1] + 1
    t2 = 0 if t2 == w
    [current[0], t2]
  when 3
    t1 = current[0] + 1
    t1 = 0 if t1 == h
    [t1, current[1]]
  when 4
    t2 = current[1] - 1
    t2 = w - 1 if t2 == -1
    [current[0], t2]
  end
end

h, w, n = gets.chomp.split(" ").map(&:to_i)

grid = []
h.times do |hh|
  grid << []
  w.times do |ww|
    grid[hh][ww] = "."
  end
end

current = [0,0]
# 向いている方向 1: 上、 2: 右、 3: 下, 4: 左
muki = 1

n.times do |i|
  if grid[current[0]][current[1]] == '.'
    grid[current[0]][current[1]] = '#'
    muki = tenkan(muki, true)
    current = move(muki, current, h, w)
  else
    grid[current[0]][current[1]] = '.'
    muki = tenkan(muki, false)
    current = move(muki, current, h, w)
  end
end

grid.each do |g|
  puts g.join("")
end
