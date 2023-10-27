class UnionFind
  attr_accessor :parents, :group_sizes

  def initialize(n)
    @parents = Array.new(n + 1) { -1 } # 親要素管理配列の初期化
    @group_sizes = Array.new(n + 1) { 1 } # グループ内の要素サイズの初期化
  end

  # 要素xが所属するtreeのrootを返す
  # @param [Integer] x
  # @return [Integer]
  def root(x)
    loop do
      break if @parents[x] == -1
      x = @parents[x]
    end

    x
  end

  # 頂点uと頂点vを統合する
  # @param [Integer] u
  # @param [Integer] v
  # @return [void]
  def unite(u, v)
    u_root = root(u)
    v_root = root(v)

    return if u_root == v_root # すでに同じグループなら統合不要

    # 頂点数が大きい方を上にして結合する
    if @group_sizes[u_root] < @group_sizes[v_root]
      @parents[u_root] = v_root
      @group_sizes[v_root] += @group_sizes[u_root]
    else
      @parents[v_root] = u_root
      @group_sizes[u_root] += @group_sizes[v_root]
    end
  end

  # 頂点uと頂点vが同じグループか判定する
  # @param [Integer] u
  # @param [Integer] v
  # @return [Boolean]
  def same(u, v)
    root(u) == root(v)
  end
end

def position_str(h, w)
  # 0:下 1:右 2:上 3:左 4:右下 5:右上 6:左下 7:左上
  dh = [1, 0, -1, 0, 1, -1, -1, 1]
  dw = [0, 1, 0, -1, 1, 1, -1, -1]

  results = []
  (0..7).each do |i|
    results << "#{h + dh[i]}_#{w + dw[i]}"
  end
  results
end

dh = [0, 1, 0, -1, 0, 1, -1, -1, 1]
dw = [0, 0, 1, 0, -1, 1, 1, -1, -1]

h, w = gets.chomp.split(" ").map(&:to_i)
grid = []
h.times do
  grid << gets.chomp.split("")
end

u = UnionFind.new(h * w)
h.times do |i|
  w.times do |j|
    next if grid[i][j] != "#"

    dh.size.times do |di|
      dhh = i + dh[di]
      dww = j + dw[di]
      next if dhh >= h || dhh < 0
      next if dww >= w || dww < 0
      next if grid[dhh][dww] != '#'

      next if i *w + j == dhh * w + dww
      u.unite(i * w + j, dhh * w + dww)
    end
  end
end

roots = []
h.times do |i|
  w.times do |j|
    next if grid[i][j] != '#'
    roots << u.root(i * w + j)
  end
end

puts roots.uniq.size