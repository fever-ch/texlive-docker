FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2012 tetex && rm ./install-tex.sh