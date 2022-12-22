
# 표준 라이브러리
# Erlang의 방대한 표준 라이브러리는 애플리케이션의 어떤 Elixir 코드에서든지 접근할 수 있습니다. Erlang 모듈은 :os와 :timer와 같이 소문자 애텀으로 표현됩니다.

# :timer.tc를 사용하여 주어진 함수의 실행 시간을 재 봅시다.
defmodule Example do
  def timed(fun, args) do
    {time, result} = :timer.tc(fun, args)
    IO.puts("Time: #{time} us")
    IO.puts("Result: #{result}")
  end
end

Example.timed(fn (n) -> (n * n) * n end, [100])

# Erlang 패키지
def deps do
  [{:png, github: "yuce/png"}]
end

png =
  :png.create(%{:size => {30, 30}, :mode => {:indexed, 8}, :file => file, :palette => palette})
