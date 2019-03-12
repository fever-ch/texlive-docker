FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2018 tetex && rm ./install-tex.sh