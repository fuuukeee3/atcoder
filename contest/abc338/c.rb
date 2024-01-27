n = gets.chomp.to_i
q = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

results = []

(0..1000000).each do |asize|
  qdub = q.dup

  q2 = []
  qdub.each_with_index do |qq, index|
    q2 << qq - (a[index] * asize)
  end

  if q2.any? { |qq| qq < 0 }
    break
  end

  bsize_base = []
  q2.each_with_index do |qq2, index|
    if b[index].zero?
      next
    else
      bsize_base << qq2 / b[index]
    end
  end

  # p "#####"
  # p q2
  # p bsize_base
  # p [asize, bsize_base.min]
  results << asize + bsize_base.min
end

puts results.max