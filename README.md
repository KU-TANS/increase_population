# 人口らくらく増やすくん

## 機能
- 人口を指定した値付近まで増やします
- 仕様上若干の誤差が発生してしまいますがご容赦ください

## 設定方法
- 人口の指定方法は都市名の後に「:人口」のように書いてください
  - 半角で入力してください
  - 例「下市:10000」
  <img src="before.png" width="400">
  <img src="after.png" width="400">

- tool.nutの4行目にある、toleranceは1ループで増やす人口です
  - 値を小さくするとループが遅くなりますが正確性が増す気がします
  - 値を大きくすると処理が早くなります


## 前提条件
- 動作にはsimutrans/script下にtool_base.nutが配置されている必要があります
- tool_base.nutはstandard 122.0以降に同梱されていますが、単体でのダウンロードも可能です
  - 詳しくはsimutrans日本語化wikiをご確認ください


## 使用方法
- スクリプトツール読込ウィンドウ（dialog_tool[34]）より呼び出してください
  - increase_population　の名前で表示されます

## 動作検証環境
- OTRP v28.3 pak.nippon
- OTRP v30 pak.nippon

検証はしていませんがstandard 122.0以降もしくはOTRP v28以降であれば動作すると思います

## ファイル配置
- pak.nipponの部分は各自の環境に合わせてください
```
simutrans
  └─pak.nippon
      └─tool
         └─increase_population
                ├─description.tab
                └─tool.nut

```


## ライセンス
MITライセンス

## バージョン情報
- 2020/12/04 v1.0 作成
- 2021/01/13 v2.0 目標人口をソースコード直書きから都市名に含めるように変更
- 2021/07/25 v2.1 公開場所変更及びリファクタリング
- 2021/09/11 v2.2 リファクタリング
