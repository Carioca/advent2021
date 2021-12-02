moves =
  File.read!("input.txt")
  |> String.split("\n", trim: true)
  |> Enum.map(&String.split()/1)
  |> Enum.map(fn [a, b] -> [a, String.to_integer(b)] end)


# first part
get_moves = fn name ->
  moves
  |> Enum.filter(fn [a, _b] -> a==name end)
  |> Enum.map(fn [_a, b] -> b end)
  |> Enum.sum()
end

forward = get_moves.("forward")
down = get_moves.("down")
up = get_moves.("up")
IO.inspect(forward * (down - up))

#second part
