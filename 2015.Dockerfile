FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2015 && rm ./install-tex.sh