x, k, d = gets.chomp.split(" ").map(&:to_i)
div, mod = x.abs.divmod(d)
if div > k
  puts x.abs - k * d
else
  if (k.even? && div.even?) || (k.odd? && div.odd?)
    puts mod
  else
    puts (mod - d).abs
  end
end
