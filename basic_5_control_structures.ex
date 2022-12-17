# if
if String.valid?("Hello") do
  "Valid string!"
else
  "Invalid String."
end

if "a string value" do
  "Truthy"
end

if 0 do
  "zero"
end

if nil do
  "it's nil"
end

# Unless
unless is_integer("hello") do
  "Not and int"
end

unless is_binary("hello") do
  "it's test"
end


# Case
case {:ok, "Hello World"} do
  {:ok, result} -> result
  {:error} -> "Uh oh!"
  _ -> "Catch all"
end

case :even do
  :odd -> "Odd"
  _ -> "Not Odd"
end

pie = 3.14
case "cherry pie" do
  ^pie -> "Not so tasty"
  pie -> "I bet #{pie} is tasty"
end

case "cherry pie" do
  ^pie2 -> "pie"
  pie2 -> "I bet #{pie2} is tasty"
end

case {1, 2, 3} do
  {1, x, 3} when x > 0 ->
    "Will match"
  _ ->
    "Won't match"
end


# Cond
cond do
  2 + 2 == 5 ->
    "This will not be true"
  2 * 2 == 3 ->
    "Nor this"
  1 + 1 == 3 ->
    "But this will"
  true -> "Catch all"
end

# With
user = %{first: "Sean", last: "Callan"}
with {:ok, first} <- Map.fetch(user, :first),
    {:ok, last} <- Map.fetch(user, :last),
    do: last <> ", " <> first

user = %{first: "doomspork"}
with {:ok, first} <- Map.fetch(user, :first),
    {:ok, last} <- Map.fetch(user, :last),
    do: last <> ", " <> first

case Repo.insert(changeset) do
  {:ok, user} ->
    case Guardian.encode_and_sign(user, :token, claims) do
      {:ok, token, full_claims} ->
        important_stuff(token, full_claims)

      error ->
        error
    end

  error ->
    error
end

with  {:ok, user} <- Repo.insert(changeset),
      {:ok, token, full_claims} <- Guardian.encode_and_sign(user, :token, claims) do
        important_stuff(token, full_claims)
      end
