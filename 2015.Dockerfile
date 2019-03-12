FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2015 tetex && rm ./install-tex.sh