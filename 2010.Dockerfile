FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2010 tetex && rm ./install-tex.sh