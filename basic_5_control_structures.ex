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
