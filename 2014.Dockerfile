FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2014 full && rm ./install-tex.sh
ENV PATH="${PATH}:/usr/local/texlive/2014/bin/x86_64-linux/"