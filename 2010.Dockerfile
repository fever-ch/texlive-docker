FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2010 && rm ./install-tex.sh