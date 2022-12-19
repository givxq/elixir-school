
# Elixir에서의 문자열
string = <<104, 101, 108, 108, 111>>
string <> <<0>>
IO.puts string

# 문자 리스트
'hello'
"hello" <> <<0>>
?Z

# 문자소와 코드 포인트
string = "\u0061\u0301"
String.codepoints string
String.graphemes string

# 문자열 함수
# length
String.length "Hello"
# replace
String.replace("Hello", "e", "a")
# duplicate
String.duplicate("Oh my ", 3)
# split
String.split("Hello World", " ")


# 애너그램
# A = super -> B = perus
defmodule Anagram do
  def anagrams?(a, b) when is_binary(a) and is_binary(b) do
    sort_string(a) == sort_string(b)
  end

  def sort_string(string) do
    string
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end
