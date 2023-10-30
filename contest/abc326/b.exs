defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> solve
  end

  def solve(str) do
    nn = String.to_integer(str)
    results = for n <- nn..919 do
      [a, b, c] =
        n
        |> Integer.to_string
        |> String.codepoints
        |> Enum.map(&String.to_integer/1)

      if a * b == c do
        n
      end
    end

    results
    |> Enum.reject(&is_nil/1)
    |> List.first
    |> IO.puts
  end
end

Main.main()
