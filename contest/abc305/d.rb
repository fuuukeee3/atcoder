n = gets.chomp.to_i
log = gets.chomp.split(" ").map(&:to_i)

log2 = { 0 => 0 }
log.each.with_index do |l, index|
  next if l.zero?

  if index.odd?
    log2[l] = log2[log[index - 1]]
  else
    log2[l] = log2[log[index - 1]] + (l - log[index - 1])
  end
end

p log2
keys = log2.keys
# p keys

q = gets.chomp.to_i
q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  s = keys.bsearch { |x| x >= l }
  e = keys.bsearch { |x| x >= r }
  p [s, e]

  tmp = log2[e] - log2[s]
  if l < s
    index = keys.find_index(s) - 1
    p index
      tmp -= log2[s] - (s - l)
  else
    tmp -= log2[s]
  end
  p tmp
end