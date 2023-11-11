defmodule Main do
  def main do
    _n = IO.read(:line)
    |> String.trim
    |> String.to_integer

    trees = IO.read(:line)
    |> String.trim
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)

    solve(trees)
  end

  def solve(list) do
    results = for tree <- list, tree > 10, do: tree - 10
    IO.inspect(Enum.sum(results))
  end
end

Main.main()
