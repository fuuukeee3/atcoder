require "tsort"
require "set"

n, m = gets.chomp.split(" ").map(&:to_i)

hash = {}
m.times do
  arr = gets.chomp.split(" ").map(&:to_i)
  (hash[arr[0]] ||= []) << arr[1]
  (hash[arr[1]] ||= []) << arr[0]
end

results = Set.new
n.times do |nn|
  root = nn + 1
  if hash[root].nil?
    hash[root] = []
  end

  each_child = lambda { |n, &b| hash[n].each(&b) }
  TSort.each_strongly_connected_component_from(root, each_child) { |scc|
    results << scc.sort
  }
end

puts results.size
