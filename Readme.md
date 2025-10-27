# How to prepare apcs
## 如何建置 docker 使用
> build 需要 3 分鐘左右
```shell
docker build -t apcs-dev .
docker run -it --name apcs-container -v .:/apcs-folder apcs-dev
```
如果容器關掉了，怎麼再回來？
不用重建，直接執行：
docker start -ai apcs-container

### 在 dokcer 裡面可以做什麼 
#### 編譯 C：
gcc -g -O2 -std=c17 -static -lm -o a.out MyCode.c
./a.out

#### 編譯 C++：
g++ -g -O2 -std=c++17 -lm MyCode.cpp
./a.out

#### 除錯 (cgdb)：
cgdb ./a.out

#### Java：
javac Hello.java
java -client -Xss8m -Xmx1024m Hello

#### Python：
python3 script.py
