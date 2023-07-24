n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

aa = Hash.new { 0 }
a.each do |aaa|
  aa[aaa % 46] += 1
end

bb = Hash.new { 0 }
b.each do |bbb|
  bb[bbb % 46] += 1
end

cc = Hash.new { 0 }
c.each do |ccc|
  cc[ccc % 46] += 1
end

count = 0
aa.each do |aaa, v1|
  bb.each do |bbb, v2|
    cc.each do |ccc, v3|
      if (aaa + bbb + ccc) % 46 == 0
        count += v1 * v2 * v3
      end
    end
  end
end

puts count