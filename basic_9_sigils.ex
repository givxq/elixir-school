
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
~c/2 + 7 = #{2 + 7}/

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