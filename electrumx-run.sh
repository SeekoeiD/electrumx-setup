#!/bin/sh
cd /home/electrumx

export ALLOW_ROOT=non_empty
export COIN=Bitcoin
export DAEMON_URL=http://user:pass@localhost:8332
export NET=mainnet
export DB_DIRECTORY=/home/db

#export SSL_CERTFILE=/home/username/electrumx/server.crt
#export SSL_KEYFILE=/home/username/electrumx/server.key
#export BANNER_FILE=/home/username/electrumx/banner-test
#export DONATION_ADDRESS=your-donation-address
#export SERVICES=rpc://,SSL://,TCP://

#export SERVICES=tcp://:50001,ssl://:50002,wss://:50004,rpc://
export SERVICES=tcp://:50001,rpc://

export MAX_SEND=2000000

python3 ./electrumx_server
