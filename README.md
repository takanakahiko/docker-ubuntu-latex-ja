# tex-japanese-docker

## 手順

1. srcディレクトリを作ってtexファイル等を入れる
2. `./initFonts.sh`
3. `docker build . -t ubuntu-latex-ja`
4. `docker run --rm -ti -v $PWD/src:/data ubuntu-latex-ja`
5. `cd /data/src`
6. `make pdf` といきたいけど，今はonlyしか動きません...(図表未対応のため)