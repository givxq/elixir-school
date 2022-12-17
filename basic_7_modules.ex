
# Modules
defmodule Example do
  def greeting(name) do
    "Hello #{name}."
  end
end

Example.greeting("Sean")


defmodule Example.Greetings do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

Example.Greetings.morning "Sean"
Example.Greetings.evening("David")

# Module Attributes
defmodule Example do
  @greeting "Hello"

  def greeting(name) do
    ~s(#{@greeting} #{name}.)
  end
end

Example.greeting("Sean")


# Structs
defmodule Example.User do
  defstruct name: "Sean", roles: []
end

%Example.User{}
%Example.User{name: "Steve"}
%Example.User{name: "Steve", roles: [:manager]}

steve = %Example.User{name: "steve", roles: [:maneger, :account]}
sean = %{steve | name: "Sean"}
{name: "Sean"} = sean
inspect(sean)

defmodule Example.User do
  @derive {Inspect, only: [:name]}
  defstruct name: nil, roles: []
end

defmodule Example.User do
  @derive {Inspect, except: [:roles]}
  defstruct name: nil, roles: []
end

sean = %Example.User{name: "Sean"}
inspect(sean)


# Composition
defmodule Sayings.Greetings do
  def basic(name), do: "Hi, #{name}"
end

defmodule Example do
  alias Sayings.Greetings

  def greeting(name), do: Greetings.basic(name)
end

Sayings.Greetings.basic("Sean")
Example.greeting("Sean")


defmodule Example do
  alias Sayings.Greetings, as: Hi

  def print_message(name), do: Hi.basic(name)
end

defmodule Example do
  alias Saying.{Greetings, Farewells}
end

Example.print_message("Sean")
Example.Greetings.evening("Sean")


# Import
last([1, 2, 3])

import List

last([1, 2, 3])


# Filtering
import List, only: [last: 1]
import List, except: [last: 1]

first([1, 2, 3])
last([1, 2, 3])

import List, only: :functions
import List, only: :macros


#require
