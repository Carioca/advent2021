input = File.read!("input.txt")
increase_count = input
|> String.split("\n", trim: true)
|> Enum.map(&String.to_integer/1)
|> Enum.chunk_every(2, 1, :discard)
|> Enum.filter(fn [a, b] -> a < b end)
|> Enum.count()

IO.inspect(increase_count)

windows = input
|> String.split("\n", trim: true)
|> Enum.map(&String.to_integer/1)
|> Enum.chunk_every(3, 1, :discard)
|> Enum.map(&Enum.sum/1)
|> Enum.chunk_every(2, 1, :discard)
|> Enum.filter(fn [a, b] -> a < b end)
|> Enum.count()

IO.inspect(windows)

# tests
test = File.stream!("input.txt")
|> Stream.map(&String.to_integer/1)
|> Stream.chunk_every(2, 1, :discard)
|> Stream.filter(fn [a, b] -> a < b end)
|> Enum.count()

IO.inspect(test)
