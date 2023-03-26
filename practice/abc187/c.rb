require 'set'
n = gets.chomp.to_i
hash = {}
n.times do
  s = gets.chomp
  if s[0] == "!"
    (hash[s[1..-1]] ||= Set.new) << false
  else
    (hash[s] ||= Set.new) << true
  end
end

hash.each do |k, v|
  if v.size == 2
    puts k
    exit
  end
end

puts "satisfiable"