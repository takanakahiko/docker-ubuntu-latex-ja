# tex-japanese-docker

## 手順

前提:カレントディレクトリは，本READMEが置いてあるパス

1. `cd src`
2. `git clone <原稿のリポジトリ>`
3. `cd ..`
4. `./initFonts.sh`
5. `docker build . -t ubuntu-latex-ja`
6. `docker run --rm -v $PWD/src:/data ubuntu-latex-ja /bin/sh -c "cd rvbook-ja-test && make pdf"`
