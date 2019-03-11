FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2014 && rm ./install-tex.sh