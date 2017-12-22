# Counter Dapp

with this very simple dapp you are going to be able to connect to an ethereum private blockchain and execute trasactions from a web ui
the transactions will be increase a number and get the count of the numbers

### Prerequisites

The first thing you need to run the app is a private network
To install an ethereum private network you need to have installed:

go-ethereum (an ethereum client written in go-language)
* [geth](https://geth.ethereum.org/install/)

## Starting a private network

after you install the go-ethereum client, also called geth follow these steps:

###1. open your terminal, create a folder called private-network and move to that folder
```
mkdir private-network
cd private-network

```

###2. once inside the folder create the genesis.json file
```
{
"config": {
"chainId": 1,
"homesteadBlock": 0,
"eip155Block": 0,
"eip158Block": 0
},
"alloc" : {},
"coinbase" : "0x0000000000000000000000000000000000000000",
"difficulty" : "0x20000",
"extraData" : "",
"gasLimit" : "0x2fefd8",
"nonce" : "0x0000000000000042",
"mixhash" : "0x0000000000000000000000000000000000000000000000000000000000000000",
"parentHash" : "0x0000000000000000000000000000000000000000000000000000000000000000",
"timestamp" : "0x00"
}

```

###3. Then create the private network with the following command

```
  geth --datadir=./chaindata/ init ./genesis.json

```
###4. Now run the private network
To run the private network in a more confortable way open 2 terminals
in the second one run this comand

```
tty
```

it should output something like this if the las number is different use in that way at the following command

```
/dev/pts/1
```

Then in the first terminal run the following command

```
geth --datadir ./chaindata --rpc --rpccorsdomain --rpcapi web3, eth, personal console 2>> /dev/pts/1

```

Now you should be watching an message like this in the first terminal
```
Welcome to the Geth JavaScript console!

instance: Geth/v1.8.0-unstable-6e613cf3/linux-amd64/go1.9.2
coinbase: 0xa5985f95d7e1087d504bc3ea5edbd60d3a13f538
at block: 33915 (Fri, 22 Dec 2017 00:57:09 -05)
 datadir: /home/rafaell416/Documents/CODE/eth-empty/chaindata
 modules: admin:1.0 debug:1.0 eth:1.0 miner:1.0 net:1.0 personal:1.0 rpc:1.0 txpool:1.0 web3:1.0

>
```

and a bunch of logs in the second one
