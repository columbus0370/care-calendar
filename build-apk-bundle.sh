#!/bin/bash

# APKバンドルを作成（APK署名なしの配布パッケージ）
mkdir -p dist

# アプリメタデータを作成
cat > dist/app-metadata.json << 'METADATA'
{
  "name": "介護サービス希望カレンダー",
  "version": "1.0.0",
  "description": "ケアマネさんへの予定共有ツール",
  "package": "com.carecare.calendar",
  "permissions": [
    "android.permission.INTERNET"
  ],
  "minSdk": 21,
  "targetSdk": 34
}
METADATA

# Webアセットをパッケージ化
cd www
zip -r ../dist/care-calendar-app.zip . -q
cd ..

# APK用設定ファイルを作成
cat > dist/install.md << 'INSTALL'
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
INSTALL

echo "✅ APPバンドル作成完了"
ls -lh dist/
