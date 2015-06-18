Requirements
=============

Install Elixir & Redis

```
brew install elixir
brew install Redis
```

Run
==============

Start the redis server

`redis-server`

Start the Elixir application

```
mix deps.get
iex -S mix
curl -X POST localhost:8880/key/ABC --data "value=123"
curl localhost:8880/key/ABC
```
