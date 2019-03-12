#!/bin/bash
export YEAR=$1
export SCHEME=$2

echo "Installing TeXlive $YEAR"

echo "Setting up a \"defensive\" wget wrapper"
mv /usr/bin/wget /usr/bin/wget.orig	
echo -e "#/bin/bash\n/usr/bin/wget.orig \"\$@\" || (sleep 5; /usr/bin/wget \"\$@\")" > /usr/bin/wget	
chmod +x /usr/bin/wget

wget --tries=10 --timeout=30 -q --user-agent=texlive/wget -c ftp://tug.org/historic/systems/texlive/$YEAR/tlnet-final/install-tl-unx.tar.gz || exit -1

mkdir /install-tl-unx


tar xvfz install-tl-unx.tar.gz -C /install-tl-unx --strip-components=1

echo -e "selected_scheme scheme-$SCHEME\ntlpdbopt_sys_bin /usr/local/bin\ntlpdbopt_sys_info /usr/local/info\ntlpdbopt_sys_man /usr/local/man" >> /install-tl-unx/texlive.profile

/install-tl-unx/install-tl -profile /install-tl-unx/texlive.profile -repository ftp://tug.org/historic/systems/texlive/$YEAR/tlnet-final || exit -1

rm -rf /install-tl-unx

echo "Removed the wget wrapper"
rm /usr/bin/wget	
mv /usr/bin/wget.orig /usr/bin/wget	
