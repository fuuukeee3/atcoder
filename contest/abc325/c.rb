def position_str(h, w)
  # 0:下 1:右 2:上 3:左 4:右下 5:右上 6:左下 7:左上
  dh = [1, 0, -1, 0, 1, -1, -1, 1]
  dw = [0, 1, 0, -1, 1, 1, -1, -1]

  results = []
  (0..7).each do |i|
    results << "#{h + dh[i]}_#{w + dw[i]}"
  end
  results
end

require 'set'

h, w = gets.chomp.split(" ").map(&:to_i)
grid = []
h.times do
  grid << gets.chomp.split("")
end

sensors = Set.new
h.times do |i|
  w.times do |j|
    sensors << "#{i}_#{j}" if grid[i][j] == "#"
  end
end

counted = Set.new

count = 0
sensors.each do |sensor|
  count += 1
  count -= 1 if counted.include?(sensor)

  i, j = sensor.split("_").map(&:to_i)
  positions = position_str(i, j)

  positions.each do |str|
    counted << str
  end
end

p sensors - counted
p count