# AVPlayerViewController  

## 概要
AVPlayerViewControllerはiOSアプリで動画を閲覧する際に利用します。  
デフォルトで音量やシークバーを用意してくれます。  
カスタマイズしたい場合は「AVPlayer」を採用します。  

## 関連するクラス  
AVPlayer  
UIViewController(親)  

## 実装手順
1. AVPlayerViewControllerのインスタンスを生成します。
2. 閲覧する動画ファイルからAVPlayerのインスタンスを生成します。
3. 1.で生成したAVPlayerViewControllerインスタンスの「player」プロパティに、2.で生成したAVPlayerインスタンスを指定します。
4. 再生したいタイミングで「player」プロパティの「play()」メソッドをコールします。  

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|player | 閲覧する動画インスタンス | `self.player = AVPlayer(url: URL(fileURLWithPath: path))` |
|delegate | AVPlayerViewControllerのデリゲート  (AVPlayerViewControllerDelegate) | `func playerViewControllerDidEndDismissalTransition(AVPlayerViewController)` |  

## 主要メソッド

|メソッド名|説明|
|---|---|
|class func preparePrerollAds() |動画広告のメタ情報を取得する |
|func playPrerollAd(completionHandler: (Error?) -> Void) |動画広告の再生中に動画をストップさせる|
|func cancelPreroll() |動画広告の再生をキャンセルする|

## フレームワーク
AVFoundation.framework  
AVKit.framework

## サポートOSバージョン
iOS8.0以上

## 開発環境
|category | Version|
|---|---|
| Swift | 4.1 |
| XCode | 9.3 |
| iOS | 11.3〜 |

## 参考
https://developer.apple.com/documentation/avkit/avplayerviewcontroller
