def func(a, b)
  b.each do |bb|
    return true unless a.include?(bb)
  end
  false
end

def func2(a, b)
  flg = true
  b.each do |bb|
    flg = false unless a.include?(bb)
  end
  flg
end

n, m = gets.chomp.split(" ").map(&:to_i)
items = []
n.times do
  item = gets.chomp.split(" ").map(&:to_i)
  hash = {}
  hash[:price] = item.shift
  hash[:func_count] = item.shift
  hash[:funcs] = item
  items << hash
end

flg = false
(0...n).each do |i1|
  (0...n).each do |i2|
    next if i1 == i2
    item1 = items[i1]
    item2 = items[i2]

    if item1[:price] >= item2[:price]
      if func2(item2[:funcs], item1[:funcs])
        if item1[:price] > item2[:price] || func(item1[:funcs], item2[:funcs])
          # p [item1, item2]
          flg = true
        end
      end
    end
  end
end

puts flg ? "Yes" : "No"