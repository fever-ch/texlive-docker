FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2010 full && rm ./install-tex.sh
ENV PATH="${PATH}:/usr/local/texlive/2010/bin/x86_64-linux/"