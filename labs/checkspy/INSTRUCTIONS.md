Is someone at the Backdoor?
you suspect that someone is trying to open SSH session into your workstation and decided to set up a surveillance script to catch any TCP traffic coming through as SSH

Tasks: 
- create a shell script file called checkspy.sh and give it +x access.
- Capture all packets coming through as SSH (port 22).
- Dump the captured packet in files called proof.pcap.
- Make sure the dump files are no bigger than 2,000,000 bytes and contain no longer than 10 minutes of capture.
- *OPTIONAL*: Analyze the dump file with *Wireshark*
Hints:
1. In order to catch SSH traffic you need to monitor port 22
2. since we are only testing this locally, you need to change your interface option.
3. You can test your script by opening a terminal window and execute SSH localhost. (it probably won't succeed unless you have an SSH server running but it will generate SSH traffic)

