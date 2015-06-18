Requirements
=============

Elixir (brew install elixir)
Redis (brew install Redis)

Run
==============

start the redis (redis-server)
mix deps.get
iex -S mix
curl -X POST localhost:8880/key/ABC --data "value=123"
curl localhost:8880/key/ABC
