# 如何準備 APCS
## 參考資料
1. [APCS 考古題](https://hackmd.io/@qshsapcs/SkFvWuHh1e)
2. [Google drive 備份](https://drive.google.com/drive/folders/1vLWNPb_PEGV8sottJHRYyDyhkDxhULWg?usp=sharing)
3. [facebook - apcs 自學交流社群](https://www.facebook.com/share/g/16gTrDTkBX/)
## 課程 1：建立環境並熟悉 linux 系統
- [ ] 下載並安裝 **Docker Desktop**
- [ ] 下載並安裝 **VSCode**
- [ ] 建立 Docker 環境
  ```shell
  docker build -t apcs-dev .
  docker run -it --name apcs-container -v .:/apcs-folder apcs-dev
  ```
- [ ] 嘗試基礎 **Linux 指令**
  - 建議觀看影片： https://www.youtube.com/watch?v=zdwmMl1GAVQ（第一段、第三段）

### 附錄
- 環境建置依據： https://apcs.csie.ntnu.edu.tw/index.php/environment/

## 課程 2：回到容器、編譯與執行程式
- [ ] 如果容器關掉了，重新進入：
  ```shell
  docker start -ai apcs-container
  ```
- [ ] 執行 Python 程式（觀念題）：
  ```shell
  python 1_hello_word.py
  ```
- [ ] 執行程式
- [ ] 逐步執行程式（Debug）：
  ```shell
  python -m pdb 2_add_bug.py
  ```

### 附錄
- Python 教學暫時沒有，但這個 docker 有包含執行以下語言的環境
#### 編譯 C++ 語言
```shell
g++ -g -O2 -std=c++17 -static -lm MyCode.cpp
./a.out
```
#### 編譯 C 語言：
```shell
gcc -g -O2 -std=c17 -static -lm -o a.out MyCode.c
./a.out
```
#### 執行 Python：
```shell
python3 script.py
```
### Reference (參考影片)
1. [How to Debug Your Python Code with the Python Debugger (pdb)](https://www.youtube.com/watch?v=6KQ_h0XBmxk)