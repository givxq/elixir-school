
# Sigils Overview
# ~C는 이스케이프나 내부 식 전개 없이 문자 리스트를 생성합니다
# ~c는 이스케이프나 내부 식 전개를 하면서 문자 리스트를 생성합니다

# ~R은 이스케이프나 내부 식 전개 없이 정규 표현식을 생성합니다
# ~r은 이스케이프나 내부 식 전개를 하면서 정규 표현식을 생성합니다

# ~S는 이스케이프나 내부 식 전개 없이 문자열을 생성합니다
# ~s는 이스케이프나 내부 식 전개를 하면서 문자열을 생성합니다

# ~W는 이스케이프나 내부 식 전개 없이 단어 리스트를 생성합니다
# ~w는 이스케이프나 내부 식 전개를 하면서 단어 리스트를 생성합니다

# ~N은 NaiveDateTime 구조체를 생성합니다.
# ~U는 DateTime 구조체를 생성합니다. (Elixir 1.9.0부터)

# 사용 가능한 구분자의 목록은 다음과 같습니다.
# <...> 꺾쇠 괄호 한 쌍
# {...} 중괄호 한 쌍
# [...] 대괄호 한 쌍
# (...) 소괄호 한 쌍
# |...| 파이프 한 쌍
# /.../ 슬래시 한 쌍
# "..." 큰따옴표 한 쌍
# '...' 작은따옴표 한 쌍

# 문자 리스트
# ~c와 ~C 시길은 각각 문자 리스트를 생성합니다.
~c/2 + 7 = #{2 + 7}

~C/2 + 7 = #{2 + 7}/


# 정규 표현식
# ~r과 ~R 시길은 정규 표현식을 나타내기 위해 사용됩니다.
# 정규 표현식은 바로 사용하기 위해 만들거나 Regex 함수 안에서 쓰기 위해 만듭니다.
re = ~r/elixir/
"Elixir" =~ re  # flase
"elixir" =~ re  # true

# 첫번째 동등 비교에서 Elixir는 정규 표현식과 일치하지 않음을 알 수 있습니다. 왜냐하면 그 단어는 첫 글자가 대문자이기 때문이죠. Elixir는 Perl 호환 정규 표현식 (PCRE)를 지원하기 때문에 시길 뒤에 i를 붙여서 대소문자 검사를 끌 수 있습니다.
re = ~r/elixir/i
"Elixir" =~ re  # true
"elixir" =~ re  # true

#더 나아가서, Elixir는 Erlang의 정규 표현식 라이브러리를 기반으로 만들어진 Regex API를 제공합니다. 정규 표현식 시길을 사용하여 Regex.split/2를 사용해 봅시다.
string = "100_000_000"
Regex.split(~r/_/, string)

#ex 정규식test
re1 = ~r/elixir#{1}/
re2 = ~R/elixir#{1}/
"elixir1" =~ re1
"elixir1" =~ re2
~S/"elixir#{1}"/ =~ re1
~S/"elixir#{1}"/ =~ re2


# 문자열
# ~s와 ~S 시길은 문자열 데이터를 생성하는 데 사용됩니다. 예를 들면,
~s/the cat in the hat on the mat/

~S/the cat in the hat on the mat/

# 차이는 무엇일까요? 차이는 앞에서 보았던 문자 리스트 시길과 비슷합니다. 정답은 식 전개와 이스케이프 시퀀스의 사용입니다. 다른 예를 한 번 들어보겠습니다.
~s/welcom to elixir #{String.downcase "SCHOOL"}/

~S/welcome to elixir #{String.downcase "SCHOOL"}/


# 단어 리스트
~w/i love elixir school/

~W/i love elxir school/

# 구분자 안에 쓰여진 것들이 공백에 의해 분리되어 리스트로 저장됨을 알 수 있습니다. 하지만 이 두 예제에서 차이점은 없어 보이네요. 이것 역시 차이점은 식 전개와 이스케이프 시퀀스에 있습니다. 다음 예제를 봅시다.
~w/i love #{'e'}lixir school/

~W/i love #{'e'}lixir school/


# NaiveDateTime
NaiveDateTime.from_iso8601("2015-01-23 23:50:07") == {:ok, ~N[2015-01-23 23:50:07]}
