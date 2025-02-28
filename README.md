## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## HAPPY FACE
```
data:image/svg+xml;base64,
PHN2ZyB2aWV3Qm94PSIwIDAgMjAwIDIwMCIgd2lkdGg9IjQwMCIgaGVpZ2h0PSI0MDAiIHhtbG5z
PSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPCEtLSBTdGFyIHNoYXBlIC0tPgogIDxw
b2x5Z29uIHBvaW50cz0iMTAwLDEwICAxMjUsNzUgMTkwLDc1IDE0MCwxMTUgCiAgICAgICAgICAg
ICAgICAgICAxNzAsMTkwIDEwMCwxNDUgMzAsMTkwIDYwLDExNSAKICAgICAgICAgICAgICAgICAg
IDEwLDc1IDc1LDc1IgogICAgICAgICAgIGZpbGw9InllbGxvdyIgc3Ryb2tlPSJibGFjayIgc3Ry
b2tlLXdpZHRoPSIzIi8+CiAgCiAgPCEtLSBFeWVzIC0tPgogIDxnIGNsYXNzPSJleWVzIiBmaWxs
PSJibGFjayI+CiAgICA8Y2lyY2xlIGN4PSI4MCIgY3k9IjkwIiByPSI3Ii8+CiAgICA8Y2lyY2xl
IGN4PSIxMjAiIGN5PSI5MCIgcj0iNyIvPgogIDwvZz4KICAKICA8IS0tIFNtaWxlIC0tPgogIDxw
YXRoIGQ9Ik0gNzAgMTEwIFEgMTAwIDE0MCwgMTMwIDExMCIgZmlsbD0idHJhbnNwYXJlbnQiIHN0
cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwv
c3ZnPgo=
```
## SAD FACE
```
data:image/svg+xml;base64,
PHN2ZyB2aWV3Qm94PSIwIDAgMjAwIDIwMCIgd2lkdGg9IjQwMCIgaGVpZ2h0PSI0MDAiIHhtbG5z
PSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPCEtLSBTdGFyIHNoYXBlIC0tPgogIDxw
b2x5Z29uIHBvaW50cz0iMTAwLDEwICAxMjUsNzUgMTkwLDc1IDE0MCwxMTUgCiAgICAgICAgICAg
ICAgICAgICAxNzAsMTkwIDEwMCwxNDUgMzAsMTkwIDYwLDExNSAKICAgICAgICAgICAgICAgICAg
IDEwLDc1IDc1LDc1IgogICAgICAgICAgIGZpbGw9InllbGxvdyIgc3Ryb2tlPSJibGFjayIgc3Ry
b2tlLXdpZHRoPSIzIi8+CiAgCiAgPCEtLSBFeWVzIC0tPgogIDxnIGNsYXNzPSJleWVzIiBmaWxs
PSJibGFjayI+CiAgICA8Y2lyY2xlIGN4PSI4MCIgY3k9IjkwIiByPSI3Ii8+CiAgICA8Y2lyY2xl
IGN4PSIxMjAiIGN5PSI5MCIgcj0iNyIvPgogIDwvZz4KICAKICA8IS0tIFNhZCBNb3V0aCAoTW92
ZWQgVXAgYnkgNSBQaXhlbHMpIC0tPgogIDxwYXRoIGQ9Ik0gNzAgMTM1IFEgMTAwIDEwNSwgMTMw
IDEzNSIgZmlsbD0idHJhbnNwYXJlbnQiIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMyIg
c3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPg==
```

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
