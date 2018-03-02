#! /bin/bash
# Run as sudo

# Function for bats
bats()
{	
	git clone https://github.com/sstephenson/bats.git ${HOME}/bats
	cd ${HOME}/bats && ./install.sh /usr/local
}


# Install tools for bash development
apt update
apt install shellcheck
bats



 
