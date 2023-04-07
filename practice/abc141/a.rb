s = gets.chomp
hash = {
  "Sunny": "Cloudy",
  "Cloudy": "Rainy",
  "Rainy": "Sunny",
}
puts hash[s.to_sym]