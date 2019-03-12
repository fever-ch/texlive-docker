#!/bin/bash
export YEAR=$1
export SCHEME=$2
export TERM=xterm

echo "Installing TeXlive $YEAR"

wget -o /dev/stdout -c ftp://tug.org/historic/systems/texlive/$YEAR/tlnet-final/install-tl-unx.tar.gz || exit -1

mkdir /install-tl-unx

tar xvfz install-tl-unx.tar.gz -C /install-tl-unx --strip-components=1

echo -e "selected_scheme scheme-$SCHEME\ntlpdbopt_sys_bin /usr/local/bin\ntlpdbopt_sys_info /usr/local/info\ntlpdbopt_sys_man /usr/local/man" >> /install-tl-unx/texlive.profile

/install-tl-unx/install-tl -profile /install-tl-unx/texlive.profile -repository ftp://tug.org/historic/systems/texlive/$YEAR/tlnet-final

rm -rf /install-tl-unx
