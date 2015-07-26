# wow, this is so much simpler
FROM msaraiva/elixir
ADD maru_redis /usr/local/bin/elixir_maru_demo
CMD ["/usr/local/bin/elixir_maru_demo"]
EXPOSE 8880
