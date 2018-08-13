FROM ubuntu:xenial

RUN set -x && \
      sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list && \
      apt-get update && apt-get -y upgrade && \
      apt-get -y install git wget software-properties-common make && \
      apt-add-repository -y ppa:jonathonf/texlive && \
      apt-get -y install texlive-full latexmk && \
      wget http://mirrors.ctan.org/macros/latex/contrib/docmute.zip && \
      wget http://mirrors.ctan.org/macros/latex/contrib/listings.zip && \
      unzip docmute.zip && \
      unzip listings.zip && \
      rm docmute.zip listings.zip && \
      mv docmute /usr/share/texmf/tex/latex/ && \
      mv listings /usr/share/texmf/tex/latex/ && \
      cd /usr/share/texmf/tex/latex/listings && \
      platex *.ins && \
      cd - && \
      mktexlsr && \
      apt-get autoremove && \
      apt-get clean && \
      kanji-config-updmap-sys auto

COPY texmf-local /usr/local/share/texmf

RUN mktexlsr && kanji-config-updmap-sys hiragino-highsierra

WORKDIR /data
VOLUME ["/data"]