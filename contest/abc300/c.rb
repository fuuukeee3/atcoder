# 0:下 1:右 2:上 3:左
dh = [1, 0, -1, 0]
dw = [0, 1, 0, -1]

# 0:右下 1:右上 2:左下 3:左上
dhh = [1, -1, -1, 1]
dww = [1, 1, -1, -1]

h, w = gets.chomp.split(" ").map(&:to_i)
c = []
h.times do
  c << gets.chomp.split("")
end

results = Array.new(h) { 0 }

h.times do |a|
  w.times do |b|
    next unless c[a][b] == '#'

    level = 0
    (1..h).each do |n|
      all_hash = (0..3).all? do |i|
        if dhh[i] > 0
          add_h = dhh[i] + i
        else
          add_h = dhh[i] - i
        end
        if dww[i] > 0
          add_w = dww[i] + i
        else
          add_w = dw[i] - i
        end
        new_a = a + add_h
        new_b = b + add_w
        next if new_a < 0 || new_a >= h
        next if new_b < 0 || new_b >= w
        c[new_a][new_b] == "#"
      end
      p [a, b]
      p all_hash
    end
  end
end

p results