# crystal_coin

Mini blockchain implemented in crystal language

## Installation

Need crystal language installed
https://crystal-lang.org/docs/installation/

git clone

cd crystal_coin

shards install

crystal build src/server.cr --release

## Usage


1) On 1 terminal do : ./server 

2) On 1 terminal do : ./server -p 3001 

3) On 1 terminal do :

curl -X POST http://0.0.0.0:3000/nodes/register -H "Content-Type: application/json" -d '{"nodes": ["http://0.0.0.0:3001"]}'

curl -X POST http://0.0.0.0:3001/transactions/new -H "Content-Type: application/json" -d '{"from": "eqbal", "to":"spiderman", "amount": 100}'

curl http://0.0.0.0:3000/chain

curl http://0.0.0.0:3001/chain

curl http://0.0.0.0:3001/pending

curl http://0.0.0.0:3001/mine

curl http://0.0.0.0:3000/nodes/resolve

## Development


## Contributing

1. Fork it (<https://github.com/your-github-user/crystal_coin/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [your-github-user](https://github.com/your-github-user) MohamedLEGH - creator, maintainer
