
# 기본
list = [1, 2, 3, 4, 5]
for x <- list, do: x*x

# 키워드 리스트
for {_key,  val} <- [one: 1, two: 2, three: 3], do: val

# 맵
for {k, v} <- %{"a" => "A", "b" => "B", "c" => "C"}, do: {k, v}

# 바이너리
for <<c <- "hello">>, do: <<c>>

# Elixir의 다른 것들과 비슷하게, 제너레이터는 패턴 매칭에 의존하여 입력 값들의 세트를 왼쪽의 변수와 비교합니다. 패턴이 일치하지 않는 경우에는 해당 값은 무시됩니다.
for {:ok, val} <- [ok: "Hello", error: "World", ok: "World"], do: val

# 여러 개의 제너레이터를 사용하여 중첩된 반복도 수행할 수 있습니다.
list = [1, 2, 3, 4]
for n <- list, times <- 1..n do
  String.duplicate("*", times)
end

# 실행되고 있는 루프를 더 잘 표현하기 위해 IO.puts를 사용하여 두 개의 생성된 값들을 표시해 봅시다.
for n <- list, times <- 1..n, do: IO.puts "#{n} - #{times}"

# 필터
import Integer
for x <- 1..10, is_even(x), do: x

for x <- 1..100,
  is_even(x),
  rem(x, 3) == 0, do: x


# :into 사용하기
for {k, v} <- [one: 1, two: 2, three: 3], into: %{}, do: {k, v}

for c <- [72, 101, 108, 108, 111], into: "", do: <<c>>
