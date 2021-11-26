# my_yard_example

個人的によくつかう、YARDのコメント集です。

出力は下記から見る事ができます。

https://junara.github.io/my_yard_example/

## Set up

yardインストール

```shell
bundle install
```

## 試す

yard出力。`./docs`配下にドキュメントが出力されます。

`docs/index.html`をブラウザで開くと出力結果を見ることができます。

```shell
bundle exec yardoc fuga/hoge.rb -o docs
```

YARDの理解を深める一番の方法は、試すこと。

[`fuga/hoge.rb`](https://github.com/junara/my_yard_example/blob/main/fuga/hoge.rb)を編集 && 上記を実行して出力された コメントがどのように出力されるかみてください。

## よくつかうもの

### MUST
* （普通のコメント）
    * コメントをメソッドの上に普通に書けば表示されます。
    * 改行表示したい場合は、一行足すのがポイント
```
 # 年齢から月を計算する
 #
 # 12を掛け合わせるだけです。
```

![image](https://user-images.githubusercontent.com/17272426/143526062-df766597-7464-49df-8853-ce7f01356c6e.png)

* `@param`
    * 引数を渡す
    * `# @param [Integer] age 年齢を入力する。1〜100`
       * ![image](https://user-images.githubusercontent.com/17272426/143525660-5290c050-7508-4cff-af2d-decd9205c1bd.png)
* `@return`
    * 返り値を定義する
    * `# @return [Integer] 整数値が返る`
       * ![image](https://user-images.githubusercontent.com/17272426/143525698-5f617f14-b38d-42cb-8463-d989f69c042f.png)
       * ![image](https://user-images.githubusercontent.com/17272426/143525726-1a69af8e-701c-4dd2-af9c-b08264367373.png)
    * 返り値を使わないvoidのとき、こう書いている。`# @return [void] なにも返さない`
       * ![image](https://user-images.githubusercontent.com/17272426/143525771-f4876e69-911f-4fbd-9db1-e484807e55b2.png)
* `@see`
    * 参考リンクを記述する
    * `# @see https://github.com/junara/my_yard_example 公式URL`
       * ![image](https://user-images.githubusercontent.com/17272426/143525799-19df1900-061e-4a2e-8e23-ed9fc3772d19.png)

### BETTER

* `@raise`
    * Raiseを明示的にするときに使う
    * `# @raise [ArgumentError] 確率1/6 でエラーとなる`
      * ![image](https://user-images.githubusercontent.com/17272426/143525839-0b544ab5-b1cd-48a7-9fc0-ade63b592833.png)

* `@example`
    * 使用例を記述する
    * インデントをつけるのがポイント

```ruby
# @example 普通の計算
#   age_to_month(20, younger: false)
```
![image](https://user-images.githubusercontent.com/17272426/143525909-2524bef5-4352-472a-b2c8-17addc83853b.png)

* `@note`
    * 備考
    * 普通のコメントで書ききれなかった事項を書く時に使っている
    * `# @note 小数点は返さない`
       * ![image](https://user-images.githubusercontent.com/17272426/143525924-432746c3-7127-46a5-99b6-e21441eb7b10.png)
