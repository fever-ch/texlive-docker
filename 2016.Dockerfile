FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2016 tetex && rm ./install-tex.sh