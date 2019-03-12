FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2011 tetex && rm ./install-tex.sh