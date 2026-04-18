CheatSheet
- Stop after capturing *n* packets `tcpdump -c n
- Add line numbers before captured packets `tcpdump -#
- Show captured packets in ASCII `tcpdump -A`
- Show captured packets in hexadecimal `tcpdump -XX`
- Show human readable capture time `tcpdump -tttt`
- List all network interfaces `tcpdump -D`
- Only capture traffic in interface abc `tcpdump -i abc`
- Only capture traffic to/from host xyz.com `tcpdump host xyz.com`
- Only capture traffic to/from IP 10.10.10.10 `tcpdump host 10.10.10.10`
- Only capture traffic through port 443 `tcpdump port 443`
- Only capture outgoing traffic to xyz.com `tcpdump dst xyz.com`
- Only capture incoming traffic from xyz.com `tcpdump src xyz.com`
- Write capture to file abc.pcap `tcpdump -w abc.pcap`
- Read saved capture file abc.pcap `tcpdump -r abc.pcap`
- Capture every *n* seconds `tcpdump -G n`
- Limited captured file size to *n* million bytes `tcpdump -C n`

Mixing whole word options
use *and, or*
e.g `tcpdump host 11.11.11.11 and port 443`

Mixing display format shorthand options
Simply concatenate them after a single hyphen
e.g `tcpdump -#XXtttt`

Mixing other shorthand options
Simply list them all with separate hyphens
e.g `tcpdump -#XX -c 10`
