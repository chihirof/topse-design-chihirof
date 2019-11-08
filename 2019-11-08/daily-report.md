# 今日やりたいこと
- 要件定義書読み込み
- 手書きでクラス図を書いてみる
- PlantUML環境構築

<br>

# やったこと

<br>

# 困っていることなど
### 設計書として何を作ればいいものか、わかっていない
- できた設計書を見て実装ができればいいのでクラス図、シーケンス図があればよい？
- ついついすぐ作りたくなってしまう

<br>

# 次回やること

<br>

***

<br>

# 作業メモ

<br>

## 要件をまとめる
要件定義書を読んで、自分なりにまとめる

### アプリ外とのやりとりはなし
- シェルもどきは稼働環境のファイルには影響を与えない→シェルもどきアプリ内で完結

### パスについて
- 起動時はroot
- ファイル名、ディレクトリ名は、相対パス、絶対パスを使用できる

### コマンド
- echo <文字列>
- cat <ファイル名>
- ls
- ls -l
    - ファイル名、作成日時
- mv <ファイル名> <ファイル名>
- mv <ファイル名> <ディレクトリ名>
- cp <ファイル名> <ファイル名>
- cp <ファイル名> <ディレクトリ名>
- touch <ファイル名>
- rm <ファイル名>
- mkdir <ディレクトリ名>
- rmdir <ディレクトリ名>
- cd <ディレクトリ名>
- cd -
- history

### 入出力機能
- リダイレクト
- 追記リダイレクト

### 補間機能
- タブ補間
- 矢印キーによるコマンドヒストリー

## PlantUML 環境構築
http://plantuml.com/ja/starting

### Java導入(WSL環境Ubuntuの場合)
```
$ sudo apt-get update
$ sudo apt install openjdk-11-jdk
```

### PlantUML install(jarファイル配置)
```
$ UML=http://sourceforge.net/projects/plantuml/files/plantuml.jar/download
$ sudo curl -JLO ${UML}
```
サンプルも動かすことができたが、作成された画像をいちいちWSL外にもっていかないといけないということにここで気づいた。  
VSCodeの「Remote-WSL」＋「PlantUML」を使ってやる。

