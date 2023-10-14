defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> String.to_integer
    |> solve
  end

  def solve(n) do
    result = for i1 <- 0..100, i2 <- 0..100, 2 ** i1 * 3 ** i2 == n do
      true
    end

    if result != [] do
      IO.puts("Yes")
    else
      IO.puts("No")
    end
  end
end

Main.main()