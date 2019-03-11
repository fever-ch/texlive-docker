#!/bin/bash
export YEAR=$1
export TERM=xterm

echo "Installing TeXlive $YEAR"

mv /usr/bin/wget /usr/bin/wget.orig

echo -e "#/bin/bash\n/usr/bin/wget.orig \"\$@\" || (sleep 10; /usr/bin/wget \"\$@\")" > /usr/bin/wget


cat /usr/bin/wget
chmod +x /usr/bin/wget


if (( $YEAR < 2018 )); then
	wget -o /dev/stdout -c ftp://tug.org/historic/systems/texlive/$YEAR/tlnet-final/install-tl.zip || exit -1

	unzip install-tl.zip

	rm install-tl.zip
else
	wget -o /dev/stdout  -c ftp://tug.org/historic/systems/texlive/$YEAR/install-tl-unx.tar.gz || exit -1

	tar xvfz install-tl-unx.tar.gz
	
	rm install-tl-unx.tar.gz
fi;

cd install-tl-*
if (( $YEAR < 2018 )); then
	echo -e "O\nL\n\n\n\nR\nI\n" | ./install-tl -repository ftp://tug.org/historic/systems/texlive/$YEAR/tlnet-final || exit -1
else
	echo -e "O\nL\n\n\n\nR\nI\n" | ./install-tl || exit -1
fi;	

cd .. ; rm -rf install-tl-*

rm cat /usr/bin/wget
mv cat /usr/bin/wget.orig cat /usr/bin/wget
