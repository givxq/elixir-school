# if and unless
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

unless is_integer("hello") do
  "Not and int"
end

unless is_binary("hello") do
  "it's test"
end


# Case
