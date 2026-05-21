# 介護サービス希望カレンダー - インストール方法

## Android への インストール方法

### 方法1: PWA（推奨）
1. ブラウザで以下にアクセス
   - http://localhost:8000/www/
2. ブラウザメニュー → 「ホーム画面に追加」
3. アプリのようにホーム画面から起動可能

### 方法2: APK ファイル化
- `care-calendar-app.zip` は、Capacitor または Android Studio でビルド可能

## 必要な環境
- Android 5.0 以上
- ブラウザ（Google Chrome推奨）

## ファイル内容
- `index.html` - メインアプリケーション
- `manifest.json` - PWA設定
- `sw.js` - オフライン対応
- `app-metadata.json` - アプリ情報
