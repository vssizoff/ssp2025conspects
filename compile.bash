mkdir ./build
cp ./main.tex ./preamble.sty ./build
cp -r ./img ./build/
cp -r ./junior ./build/
cp -r ./senior ./build/
cp -r ./2025 ./build/

cd ./build || exit

lualatex -shell-escape main.tex
lualatex -shell-escape main.tex

cp ./main.pdf ../main.pdf