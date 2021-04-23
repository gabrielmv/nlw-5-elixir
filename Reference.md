docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres


- Setup do banco
mix ecto.create

- run server
mix phx.server

- get dependencies
mix deps.get

- compile
mix compile

- test
mix test

- gen linter config
mix credo.gen.config

- auto format
mix format

- shell
iex

- shell in the project
iex -S mix

- make migrations
mix ecto.gen.migration create_restaurants_table

-  migrate
mix ecto.migrate

- show all routes
mix phx.routes


#missaoespacial
#embuscadoproximonivel
#astronautas
#universoinfinito
