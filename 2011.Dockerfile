FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2011 && rm ./install-tex.sh