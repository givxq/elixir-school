
# New Projects
mix new example

# Interactive
cd exmample
iex -S  mix

# Compilation
mix compile

# Managing Dependencies
def deps do
  [
    {:phoenix, "~> 1.1 or ~> 1.2"},
    {:phoenix_html, "~> 2.3"},
    {:cowboy, "~> 1.0", only: [:dev, :test]},
    {:slime, "~> 0.14"}
  ]
end

mix deps.get

# Environments
:dev
:test
:prod

MIX_ENV=prod mix compile
