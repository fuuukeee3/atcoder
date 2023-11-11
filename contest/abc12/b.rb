n = gets.chomp.to_i

hh, mod = n.divmod(3600)
n = mod

mm, mod = n.divmod(60)
ss = mod

puts [hh, mm, ss].map { |a| a.to_s.rjust(2, "0") }.join(":")



