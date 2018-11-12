#!/bin/sh


ufonormalizer ../sources/*.ufo

rm -rf ../build
rm -rf ../fonts/otf/ ../fonts/ttf/
mkdir ../fonts/otf/ ../fonts/ttf/
mkdir ../build
cd ../build
cp -r ../sources/1-drawing/*.glyphs ./

fontmake -g *.glyphs --interpolate --production-names --output otf ttf #--autohint
mv ./master_otf/* ../fonts/otf/
# mv ./autohinted/master_ttf/* ../fonts/ttf/

rm -rf master_otf
rm -rf master_ttf
rm -rf ./*.ufo
cd ../
# rm -rf ./build
