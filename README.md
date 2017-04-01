# rancher-dns-forwarder
A docker container that forwards the rancher internal DNS through a bind named server.

Named is currently configured to:

  - Accept connections from ranchers network (10.42.0.0/16) and default rancher open-vpn range (10.43.0.0/16)
  - Forward requests for rancher.internal to local rancher-dns (169.254.169.250).
  - Send other dns requests to 8.8.8.8 dns server.


> Use this container to access ranchers DNS when connected with OpenVPN while still resolving external IP's for any Amazon domains.

### Configuration / Installation
  - Launch the container in Rancher.
  - Configure a static ip for the container in it's network settings.

