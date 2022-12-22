# 일반적인 관례

# 에러 처리
raise "Oh no!"

raise ArgumentError, message: "인자의 값이 올바르지 않습니다"

# 에러가 일어나는 시점을 알고 있다면, 이를 try/rescue와 패턴매칭으로 다룰 수 있습니다.
try do
  raise "Oh no!"
rescue
  e in RuntimeError -> IO.puts("An error occurred: " <> e.message)
end

# 하나의 rescue로 여러 개의 에러를 매치하는 것도 가능합니다.
try do
  opts
  |> Keyword.fetch!(:source_file)
  |> File.read!()
rescue
  e in KeyError -> IO.puts("missing :source_file option")
  e in File.Error -> IO.puts("unable rto read source file")
end

# 새로운 에러
defmodule ExampleError do
  defexception message: "an example error"
end

try do
  raise ExampleError
rescue
  e in ExampleError -> e
end

# 종료하기
spawn_link fn -> exit("oh no") end
