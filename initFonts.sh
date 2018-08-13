#!/bin/sh
set -x

SRCDIR="/System/Library/Fonts/"
DSTDIR="texmf-local/fonts/opentype/"

mkdir -p texmf-local/fonts/opentype/hiragino
cp $SRCDIR"ヒラギノ角ゴシック W3.ttc" $DSTDIR"hiragino/HiraginoSans-W3.ttc"
cp $SRCDIR"ヒラギノ角ゴシック W6.ttc" $DSTDIR"hiragino/HiraginoSans-W6.ttc"
cp $SRCDIR"ヒラギノ角ゴシック W8.ttc" $DSTDIR"hiragino/HiraginoSans-W8.ttc"
cp $SRCDIR"ヒラギノ丸ゴ ProN W4.ttc" $DSTDIR"hiragino/HiraginoSansR-W4.ttc"
cp $SRCDIR"ヒラギノ明朝 ProN.ttc"    $DSTDIR"hiragino/HiraginoSerif.ttc"