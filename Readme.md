# How to prepare apcs
## Lession 1
> 建立環境執行程式
- [ ] 下載 docker desktop
- [ ] 下載 vscode
- [ ] 建立 docker
> build 需要 3 分鐘左右
```shell
docker build -t apcs-dev .
docker run -it --name apcs-container -v .:/apcs-folder apcs-dev
```
- [ ] 玩看看基礎 linux 指令 (建議 看第一第三段
    - https://www.youtube.com/watch?v=zdwmMl1GAVQ)
### appendix
1. 環境建置依據: https://apcs.csie.ntnu.edu.tw/index.php/environment/
## Lsession 2
- [ ] 容器關掉了，怎麼再回來？不用重建，直接執行：
```
docker start -ai apcs-container
```
- [ ] 編譯觀念題的程式: 編譯 C++
```
g++ -g -O2 -std=c++17 -static -lm MyCode.cpp
./a.out
```
- [ ] 執行程式
- [ ] step by step 執行程式
```
cgdb ./a.out
```
### appendix
> python 教學以後看看有沒有機會做
#### 編譯 C：
gcc -g -O2 -std=c17 -static -lm -o a.out MyCode.c
./a.out
#### Java：
javac Hello.java
java -client -Xss8m -Xmx1024m Hello
#### Python：
python3 script.py
