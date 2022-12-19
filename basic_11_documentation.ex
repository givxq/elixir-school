
# 주석
# 인라인으로 문서화하고자 할 때 사용
@moduledoc - 모듈 수준에서 문서화하고자 할 때 사용
@doc - 함수 수준에서 문서화하고자 할 때 사용

# 인라인 문서화
# 콘솔에 'Hello, chum.' 를 출력합니다.
IO.puts("Hello, " <> "chum.")

# 모듈 문서화하기
#@moduledoc 주석자는 모듈 수준에서 인라인 주석을 달 수 있게 해줍니다. 일반적으로, 파일의 첫번째 줄에 있는 defmodule 선언부의 바로 아래에 위치합니다. @moduledoc으로 장식된 한 줄 주석을 아래의 예제에서 볼 수 있습니다.
defmodule Greeter do
  @moduledoc """
  사람을 반기는 함수 'hello/1' 를 제공합니다.
  """

  def hello(name) do
    "Hello, " <> name
  end
end


# 함수문서화하기
# Elixir는 모듈 범위에서 주석을 달 수 있게 해주었듯이, 함수 범위에서도 비슷한 방식으로 주석을 달 수 있게 해줍니다. @doc 주석자는 함수 수준에서의 인라인 주석을 가능하게 해줍니다. @doc 주석자는 주석을 달고자 하는 함수 선언부의 바로 위쪽에 위치합니다.


# 모듈은 문서화하고자 하는 것이 아니라면, @moduledoc 을 공백으로 비워두지 마세요. 차라리 다음과 같이 false 로 두는 게 낫습니다.
defmodule Greeter do
  @moduledoc false
end


# 모듈 문서 내에서 함수를 설명하고자 할 때, 다음과 같이 역 따옴표를 이용해보세요.
defmodule Greeter do
  @moduledoc """
  ...
  이 모듈도 `hello/1` 함수를 가지고 있습니다.
  """

  def hello(name) do
    IO.puts("Hello, " <> name)
  end
end
