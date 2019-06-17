# gkvs-keys
Default Keys for GKVS

### Install

Install certstrap
```
brew install certstrap
```

Generate certs
```
certstrap init --common-name "GkvsAuth" --expires "30 years"
```

Request cert for the node
```
certstrap request-cert --domain `hostname`,localhost
```

Sign certificate request
```
certstrap sign `hostname` --CA GkvsAuth
```

Add to ENV:
```
export GKVS_KEYS=[YOUR_CURRENT_DIRECTORY]/out
```

Run GKVS server:
```
./gkvs_server
```

Show cert:
```
openssl s_client -showcerts -connect localhost:4040
```

The old way:
```
#!/bin/bash

HOSTNAME=`hostname`

echo "Generating pub/prv keys for $HOSTNAME"

ssh-keygen -f gkvs.key -N "$HOSTNAME" -t ed25519
ssh-keygen -l -f gkvs.key
```
