defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> solve
  end

  def solve([a, b]) do
    ans = (b / 100) * a
    IO.puts(ans)
  end
end

Main.main()
