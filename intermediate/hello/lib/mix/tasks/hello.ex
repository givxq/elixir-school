defmodule Mix.Tasks.Hello do
  @moduledoc "The hello mix task: `mix help hello`"
  use Mix.Task

  @shortdoc "Simply runs the Hello.say/0 command."
  def run(_) do

    # 이것은 우리 애플리케이션을 실행할 것입니다.
    Mix.Task.run("app.start")

    # 앞서 만든 Hello.say() 함수 호출하기
    Hello.say()

    png =
      :png.create(%{:size => {30, 30}, :mode => {:indexed, 8}, :file => file, :palette => palette})

    IO.puts(png)
  end
end
