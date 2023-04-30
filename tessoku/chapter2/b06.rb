n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

atari = [0]
hazure = [0]
arr.each_with_index do |a, index|
  if a == 1
    atari << atari[index] + 1
    hazure << hazure[index]
  else
    atari << atari[index]
    hazure << hazure[index] + 1
  end
end

q = gets.chomp.to_i
q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)

  atari_count = atari[r] - atari[l - 1]
  hazure_count = hazure[r] - hazure[l - 1]

  if atari_count == hazure_count
    puts "draw"
  elsif atari_count > hazure_count
    puts "win"
  else
    puts "lose"
  end
end