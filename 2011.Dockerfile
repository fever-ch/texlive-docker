FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2011 full && rm ./install-tex.sh
ENV PATH="${PATH}:/usr/local/texlive/2011/bin/x86_64-linux/"