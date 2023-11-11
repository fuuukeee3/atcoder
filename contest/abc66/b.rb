s = gets.chomp

def even_str?(s)
  return false if s.size % 2 != 0

  mid = s.size / 2
  if s[0...mid] == s[mid..-1]
    true
  else
    false
  end
end

loop do
  s = s[0...-1]
  if even_str?(s)
    puts s.size
    break
  end
end
