FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2013 tetex && rm ./install-tex.sh