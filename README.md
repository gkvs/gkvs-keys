# gkvs-keys
Default Keys for GKVS

### Install

Install certstrap
```
brew install certstrap
```

Generate certs
```
certstrap init --common-name "GkvsAuth" --expires 30 years
```

Request cert for the node
```
certstrap request-cert --domain `hostname`
```

Sign certificate request
```
certstrap sign `hostname` --CA GkvsAuth
```

