defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> String.split("")
    |> solve
  end

  def solve(list) do
    list
      |> Enum.map(&turn/1)
      |> Enum.join("")
      |> String.reverse
      |> IO.puts
  end

  def turn(str) do
    cond do
      str == "6" -> "9"
      str == "9" -> "6"
      true -> str
    end
  end
end

Main.main()