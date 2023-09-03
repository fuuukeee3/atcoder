n, d, pp = gets.chomp.split(" ").map(&:to_i)
f = gets.chomp.split(" ").map(&:to_i)

f.sort!
fsums = Array.new(n)
fsums[0] = f[0]
(1...(f.size)).each do |i|
  fsums[i] = fsums[i-1] + f[i]
end

pass_count, mod = n.divmod(d)
pass_count += 1 unless mod.zero?

answer = fsums[-1]

(1..pass_count).each do |pc|
  tmp_sum = fsums[(d * pc + 1) * -1]
  if tmp_sum.nil?
    answer = [answer, pp * pc].min
    break
  end

  answer = [answer, tmp_sum + (pp * pc)].min
end

puts answer