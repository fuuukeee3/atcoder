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

n, q = gets.chomp.split(" ").map(&:to_i)
uf = UnionFind.new(n)

q.times do
  q = gets.chomp.split(" ").map(&:to_i)
  case q[0]
  when 1
    uf.unite(q[1], q[2])
  when 2
    puts uf.same(q[1], q[2]) ? "Yes" : "No"
  end
end