FROM feverch/texlive:base
RUN cd /tmp && ./install-tex.sh 2016 full && rm ./install-tex.sh
ENV PATH="${PATH}:/usr/local/texlive/2016/bin/x86_64-linux/"