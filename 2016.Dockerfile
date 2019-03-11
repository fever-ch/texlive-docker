FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2016 && rm ./install-tex.sh