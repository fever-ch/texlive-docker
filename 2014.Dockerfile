FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2014 tetex && rm ./install-tex.sh