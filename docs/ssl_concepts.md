Transport Layer Security is an updated version of SSL. When a sender and a receiver try to communicate with each other with encrypt data, two sets of keys are generated. 
The sender has their  own public and private key and the receiver have their own public and private key. 
Before data is exchanged, set of keys are exchanged. Only publics keys are sent over the internet to each other.
**handshaking and key exchange**
It is impossible to capture the private key because the public key is the only that is sent to each other, so the private key never leaves where they are.

When the message arrives to the receiver is going to use their own private key to decrypt this back into the original. This process is very secure, so if anyone intercept any of these in transit, they don't have the private key, so they're not going be able to get the final message our. Unfortunately, this is where [[tcpdump]] captures these encrypt data. How are we going to look at it? this is the plan. We are going to capture the private and public keys as well into a capture file done by the browser in our local workstation.
Then of course, we have [[tcpdump]] we will captured the encrypted data. We're going to use these two to recreate the original unencrypt data.

[[Cumulative Challenge]]

![[SSL.excalidraw|650]]

