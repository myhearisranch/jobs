## 勤怠管理アプリ
出席を管理するアプリです。<br>
ユーザーごとに出席・退勤した日時 , 回数を見る事が出来ます。

## 使用技術
- Ruby 2.5.1
- Rails 5.2.8.1
- Javascript

## 機能一覧
#### ●現在時刻の表示
<img width="177" alt="1" src="https://user-images.githubusercontent.com/87411323/201294779-ac4878ef-b48c-4306-a087-87704d59fd2d.PNG">

####  ●ユーザー登録、ログイン機能(devise)
<img width="224" alt="2" src="https://user-images.githubusercontent.com/87411323/201294820-80771bb4-0797-4cb5-876c-0c1fe531a223.PNG">


####  ●出勤打刻 , 退勤打刻機能
<img width="297" alt="3" src="https://user-images.githubusercontent.com/87411323/201294851-e406d48e-168e-4c0f-b2b4-152b454fe1e1.PNG">
<img width="410" alt="4" src="https://user-images.githubusercontent.com/87411323/201294873-301f1063-3148-489c-8470-9ccfafcea1f8.PNG">

#### ●今日1日の勤怠状況の一覧ページ
<img width="425" alt="5" src="https://user-images.githubusercontent.com/87411323/201294948-10f7212b-fe69-4491-b202-33adfb44eb12.PNG">


#### ●今までの勤怠状況の詳細ページ
<img width="405" alt="6" src="https://user-images.githubusercontent.com/87411323/201294997-6c834060-a1fc-403e-9c98-c846a92f10fa.PNG">

## 開発環境の立ち上げ方
###### ●下記のコマンドを実行する<br>
- bin/rails db:migrate
- bin/rails db:seed

###### ●サーバーを立ち上げる
- bin/rails s

###### ● ユーザーのログイン
- name: 山田太郎
- password 123456



