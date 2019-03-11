FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2013 && rm ./install-tex.sh