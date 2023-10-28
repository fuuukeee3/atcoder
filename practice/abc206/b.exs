defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> String.to_integer
    |> solve
    |> IO.puts
  end

  def solve(n) do
    solve2(n, 0, 1)
  end

  def solve2(n, total, day) do
    new_total = total + day
    if new_total >= n do
      day
    else
      solve2(n, new_total, day + 1)
    end
  end
end

Main.main()
