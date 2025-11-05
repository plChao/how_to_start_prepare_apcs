# 希望資工大一的我可以早點學會的技能
> 準備 apcs 教材到一半感覺有點太難了XD
> 改成分享如果資工大一的我會這些技能可以省很多時間
## 用 command line 擺脫 IDE 編譯的技能
1. 提早用 VS code 代替 Codeblocks
2. 用 command line 編譯 (能變的選項比較多)
3. redirect 不用每次在那邊打測資
## 用 docker 建立虛擬 linux 的技能
> 想當初在 WSL (windows subsystem for linux) 採了很多坑...
1. 如果你是用 MAC 可以跳過XD
2. 但是我還是想用 Windows 玩遊戲
3. Virtual box 太肥了
## gdb
1. debug 的好工具
## Learn by doing
1. [Codecademy](https://www.codecademy.com/learn/learn-c-plus-plus) 

## 例子: 如果我大一會這樣寫程式作業就好了
### 建立 docker 虛擬環境
- [ ] 下載並安裝 **Docker Desktop**
- [ ] 下載並安裝 **VSCode**
- [ ] 建立 Docker 環境
  ```shell
  docker build -t apcs-dev .
  docker run -it --name apcs-container -v .:/root apcs-dev
  ```
### 回到容器、編譯與執行程式
- [ ] 如果容器關掉了，重新進入：
  ```shell
  docker start -ai apcs-container
  ```
### 如果是寫 C++ 作業
- [ ] 執行 C++ 程式
```shell
g++ -g -O2 -std=c++17 -static -lm MyCode.cpp
./a.out
```
- [ ] 逐步執行程式 (Debug):
```shell
cgdb ./a.out
```
### 如果是寫 Python 作業
- [ ] 執行 Python 程式
  ```shell
  python 1_hello_word.py
  ```
- [ ] 執行程式
- [ ] 逐步執行程式（Debug）：
  ```shell
  python -m pdb 2_add_bug.py
  ```

### Reference (參考影片)
1. [How to Debug Your Python Code with the Python Debugger (pdb)](https://www.youtube.com/watch?v=6KQ_h0XBmxk)