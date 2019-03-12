FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2017 tetex && rm ./install-tex.sh