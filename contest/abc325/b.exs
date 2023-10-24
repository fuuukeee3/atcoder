defmodule Main do
  def main do
    n =
      IO.read(:line)
      |> String.trim
      |> String.to_integer

    arr = for _i <- 0..(n-1) do
      IO.read(:line)
        |> String.trim
        |> String.split(" ")
        |> Enum.map(&String.to_integer/1)
        |> List.to_tuple
    end

    results = Enum.map(0..23, fn i ->
      Enum.reduce(arr, 0, fn {w, x}, acc ->
        if rem(i+x, 24) <= 17 and rem(i+x, 24) >= 9 do
          acc + w
        else
          acc
        end
      end)
    end)

    IO.puts(Enum.max(results))
  end
end

Main.main()
