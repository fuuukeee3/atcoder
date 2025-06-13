defmodule Main do
  def main do
    _n = Acl.Input.get_n()
    t = Acl.Input.get_s_split()
    a = Acl.Input.get_s_split()

    solve(t, a)
    |> IO.puts()
  end

  defp solve(t, a) do
    t
    |> Enum.with_index()
    |> Enum.any?(fn {tt, index} ->
      tt == "o" && Enum.at(a, index) == "o"
    end)
  end
end

defmodule Acl do
  defmodule Input do
    def get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

    def get_s, do: IO.read(:line) |> String.trim()

    def get_n_list,
      do: IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)

    def get_s_list,
      do: IO.read(:line) |> String.trim() |> String.split(" ")

    def get_s_split, do: IO.read(:line) |> String.trim() |> String.codepoints()
  end
end

defmodule Combinations do
  def combinations(list, n) when n > 0 do
    do_combinations(list, n, [])
  end

  defp do_combinations([], _n, acc), do: acc
  defp do_combinations([_ | _] = list, 1, acc), do: acc ++ Enum.map(list, &[&1])

  defp do_combinations([head | tail], n, acc) do
    new_combinations = for combo <- do_combinations(tail, n - 1, []), do: [head | combo]
    do_combinations(tail, n, acc ++ new_combinations)
  end
end

defmodule Permutations do
  def permutations(list), do: do_permutations(list, length(list))

  defp do_permutations([], 0), do: [[]]
  defp do_permutations(_list, 0), do: []

  defp do_permutations(list, n) do
    for elem <- list,
        perm <- do_permutations(list -- [elem], n - 1),
        do: [elem | perm]
  end
end

Main.main()
