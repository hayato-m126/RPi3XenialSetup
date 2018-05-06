# Rasberry Pi 3 Ubuntu 16.04(Xenial Xerus) setup shell scripts
Raspberry Pi 3上にUbuntu 16.04 LTSをインストールし、ROSを実行するための環境を作ります。  
併せて、IDEや開発に便利なツールを入れるためのスクリプトです。  

## 前提条件
Ubuntu 16.04 LTS ARM版をインストールする  
https://ubuntu-mate.org/raspberry-pi/  
Win32DiskImager等で書き込みを行います。  
上記のURLのイメージをmicroSDに書き込んだ状態から始めます。  

### 注意点
sshで操作するのを前提としています。  
上記のイメージでインストールした場合、sshサーバーがデフォルトで起動する設定になっています。  
コマンド打ってファイアフォールの設定ができる方を除き、セキュリティのためプライベートなLAN内で実行する事を推奨します。  

## ツール
sshで操作するのでsshのクライアントが必要です。  
Windowsの場合は、RLoginを推奨します。  

## 作業手順
下記の手順で作業を行います。

1. 前提条件のところで書き込んだmicroSDをUbuntuが起動しているPCに刺す
2. GPartedを用いてmicroSDの領域いっぱいまでext4の領域を増やす
3. マウス、キーボード、HDMIのディスプレイを接続して起動
4. 画面の支持に従いユーザーの作成等、初期設定を行う
5. シェルに実行権限を付与する(chmod +x *.sh)
6. ファイル名の番号順に実行する(./NN_filename.sh)

## ソフトウェアアップデート出来ない場合
GUIでログイン時にSoftware Updaterで更新が出来ない場合は
```
sudo apt-get clean
sudo rm -rf /var/cache/apt/archives/partial
sudo rm -rf /var/cache/apt/archives/lock
```
参考URL
https://ameblo.jp/crabman/entry-12265075668.html

## 既存の問題
Visual Studio Codeはリモコンでは立ち上がらない


