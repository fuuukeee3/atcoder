defmodule Main do
  def main do
      IO.read(:line)
      |> String.trim
      |> String.to_integer
      |> era
      |> IO.puts
  end

  def era(n) do
    if rem(n, 100) == 0 do
      div(n, 100)
    else
      div(n, 100) + 1
    end
  end
end

Main.main()