FROM feverch/texlive:base
ARG MIRROR="ftp://tug.org/historic/systems/texlive"
RUN cd /tmp && ./install-tex.sh 2018 full && rm ./install-tex.sh
ENV PATH="${PATH}:/usr/local/texlive/2018/bin/x86_64-linux/latex"
