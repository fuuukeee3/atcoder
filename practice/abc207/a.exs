defmodule Main do
  def main do
    IO.read(:line) |> String.trim
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> solve
  end

  def solve([a, b, c]) do
    [a+b, a+c, b+c]
    |> Enum.max()
    |> IO.puts
  end
end

Main.main()
