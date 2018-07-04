# tex-japanese-docker

## 手順

1. srcディレクトリを作ってtexファイル等を入れる
2. `docker build . -t ubuntu-latex-ja`
3. `docker run --rm -ti -v $pwd:/data ubuntu-latex-ja`
4. `cd /data/src`
5. `make pdf` といきたいけど，今はonlyしか動きません...(図表未対応のため)