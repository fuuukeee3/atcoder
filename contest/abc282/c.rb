n = gets.chomp.to_i
s = gets.chomp.split("")

kukuri = false
s.each do |ss|
  if kukuri
    print ss
  else
    print (ss == ",") ? "." : ss
  end

  if ss == '"'
    kukuri = !kukuri
  end
end

puts ""
