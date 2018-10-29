# setproxy

学校で毎度設定を書き換えて`source ~/.bashrc`するのが面倒なので自動で切り替えるシェルスクリプトを書きました。

# インストール

以下のコマンドをターミナルで叩いてください
```bash
$ git clone https://github.com/kantarow/setproxy.git ~/.setproxy
$ echo 'export SET_PROXY="$HOME/.setproxy"' >> ~/.bashrc
$ echo 'export PATH="$PATH:SET_PROXY"' >> ~/.bashrc
$ echo 'alias setpr="source setproxy.sh $@"'
```

# 使いかた

予めconfigファイルに変数を設定します

```
hoge=hogehoge.jp:0000
```

あとはコマンドを叩くだけです
```bash
$ setpr hoge
https://hogehoge.jp:0000
http://hogehoge.jp:0000
```

bashとgitのコンフィグの設定が書き換わります。
