defmodule Main do
  def main do
     IO.read(:line)
    |> String.trim
    |> String.to_integer
    |> solve
    |> IO.puts
  end

  def solve(n) do
    nn = trunc(n * 1.08)
    case nn do
      x when x > 206 -> ":("
      x when x < 206 -> "Yay!"
      206 -> "so-so"
    end
  end
end

Main.main()
