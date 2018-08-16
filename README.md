Linux Swiftで、自分で書いたfatalErrorと、Foundation内部から呼ばれるfatalErrorで、
スタックトレースが出るかどうかが異なる。
それを確認できるリポジトリ。

確認方法

Mac環境でこのリポジトリをチェックアウトする。

公式サイトからdockerをインストールする。

homebrewでdocker-composeをインストールする。

リポジトリルートで下記を実行。

```
$ sudo docker-compose up
```

長い時間のあと、シェルが戻ってくるので、プロセスが起動している事を確認する。

```
$ sudo docker ps
```

下記コマンドを叩いてログを監視する。

```
$ sudo docker logs -f vapor
```

ブラウザから下記にアクセスする。

- http://localhost:8080/apple

  正常に文字列がかえるはず。

- http://localhost:8080/banana

  サービスが落ちてログにスタックトレースが出るはず。

- http://localhost:8080/charly

  サービスが落ちるが、エラーが1行しか出ないはず。

サービスが落ちたあとはdocker-composeが再起動して勝手に立ち上がるので、
ログを開き直して待機すれば良い。


