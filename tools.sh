#! /bin/bash
# Run as sudo

# Function for bats
bats()
{	
	git clone https://github.com/sstephenson/bats.git ${HOME}/bats
	cd ${HOME}/bats && ./install.sh /usr/local
}
bashCurses()
{
	git clone https://github.com/mental1234/bashsimplecurses.git ${HOME}/bashCurses
	cd ${HOME}/bashCurses && make install 
}


echo "Would you like to install Bash Automated System? Y/N"
read A_BATS
if [ "${A_BATS}" == 'Y' ]; then
	echo "Installing bats"
	bats
	exit 0
elif [ "${A_BATS}" == 'N' ]; then
	echo "Bash automated system will not be installed"
else 
	echo "Please enter only Y or N"
	exit 1
fi 

echo "Would you like to install Bash simple curses? Y/N"
read A_BashCurses
if [ "${A_BATS}" == 'Y' ]; then
        echo "Installing Bash Curses"
        bashCurses
        exit 0
elif [ "${A_BATS}" == 'N' ]; then
        echo "Bash simple curses system will not be installed"
else
        echo "Please enter only Y or N"
        exit 1
fi

echo "Would you like to install ShellCheck? Y/N"
read A_SC
if [ "${A_BATS}" == 'Y' ]; then
        echo "Installing ShellCheck"
        apt update
	apt install shellcheck
        exit 0
elif [ "${A_BATS}" == 'N' ]; then
        echo "Shell Check not be installed"
else
        echo "Please enter only Y or N"
        exit 1
fi

exit 0




