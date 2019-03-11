FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2012 && rm ./install-tex.sh