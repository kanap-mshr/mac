
# Macセットアップ関連

---

## 各種高速化

### メモリ解放

```bash
sudo purge
```

### Homebrewのキャッシュ削除

```bash
brew cleanup
```
### キー入力速度を高速化

```bash
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1
```

### Finderを開く時のアニメーションをOFF

```bash
defaults write com.apple.finder DisableAllAnimations -boolean true;
killall Finder
```

### スクロールバーの弾むアニメーションをOFF

```bash
defaults write -g NSScrollViewRubberbanding -bool no;
killall Finder
```

### オートマチックウィンドウアニメーションをOFF

```bash
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO
```

### アプリのデスクトップ間の移動速度を変更

```bash
defaults write com.apple.dock workspaces-edge-delay -float 0.2;
killall Dock
```

### Finderのアニメーションをすべて削除

```bash
defaults write com.apple.finder AnimateInfoPanes -boolean false;
killall Finder
```

### ミッションコントロールのアニメーション時間を変更

```bash
defaults write com.apple.dock expose-animation-duration -float 0.1;
killall Dock
```


### アイコンをドラッグした時のアニメーションをOFF

```bash
defaults write com.apple.finder AnimateSnapToGrid -boolean false;
killall Finder
```

### ダイアログの表示速度を高速化

```bash
defaults write -g NSWindowResizeTime 0.001
```


### ネットワークドライブで.DS_Storeファイルを作成しないようにする

```bash
defaults write com.apple.desktopservices DSDontWriteNetworkStores true
```


### スクリーンショットから影を取り除く

```bash
defaults write com.apple.screencapture disable-shadow -boolean true;killall SystemUIServer
```

### Launchpadのアニメーションをすべて無効

```bash
defaults write com.apple.dock springboard-show-duration -float 0
defaults write com.apple.dock springboard-hide-duration -float 0
defaults write com.apple.dock springboard-page-duration -float 0
```

### スムーズスクローリングをすべて無効

```bash
defaults write -g NSScrollAnimationEnabled -bool false;
```


### クイックルック表示時のアニメーションをすべて無効

```bash
defaults write -g QLPanelAnimationDuration -float 0
```


### リサイジングアニメーションをすべて無効

```bash
defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false
```


### メール送信時／返信時のアニメーションをすべて無効

```bash
defaults write com.apple.Mail DisableSendAnimations -bool true
defaults write com.apple.Mail DisableReplyAnimations -bool true
```


### カラムアニメーションをすべて無効

```bash
defaults write -g NSBrowserColumnAnimationSpeedMultiplier -float 0
```


### ツールチップの表示を高速化

```bash
defaults write -g NSWindowResizeTime 0.001
```


### アイコンをドラッグした時のアニメーションを高速化

```bash
defaults write com.apple.finder AnimateSnapToGrid -boolean false; killall Finder
```


### クイックルックで表示したテキストをコピペ

```bash
defaults write com.apple.finder QLEnableTextSelection -bool true; killall Finder
```


### Safariの表示速度、Webサイトのアイコンを非表示

```bash
defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.25
defaults write com.apple.Safari WebIconDatabaseEnabled -boolean false
```


### ダッシュボードを無効にしてメモリ節約と高速化

```bash
defaults write com.apple.dashboard mcx-disabled -boolean true; killall Dock
```


### Dockアニメーションを高速化

```bash
defaults write com.apple.dock autohide-time-modifier -float 0;killall Dock
defaults write com.apple.dock autohide-delay -float 0;killall Dock
```


### Dockが表示される時間を0に設定

```bash
defaults write com.apple.dock autohide-delay -float 0;killall Dock
```


### DashboardからWidgetをすべて削除

```bash
defaults write com.apple.dashboard mcx-disabled -boolean YES;killall Dock
```


### ミッションコントロールのアニメーション時間を変更

```bash
defaults write com.apple.dock expose-animation-duration -float 0.1;killall Dock
```


### アプリがデスクトップ間を移動する際の速度を変更

```bash
defaults write com.apple.dock workspaces-edge-delay -float 0.2;killall Dock
```


### Finderのアニメーションをすべて削除

```bash
defaults write com.apple.finder AnimateInfoPanes -boolean false;killall Finder
```


### 隠しファイルを表示

```bash
defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder
```


### 通知センターをオフ

```bash
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
```


### DS_Storeを削除

```bash
sudo find / -name ".DS_Store" -print -exec rm {} ";";killall Finder
```


### Finderのパス表示をホームフォルダを基準にする

```bash
defaults write com.apple.finder PathBarRootAtHome -bool yes;killall Finder
```

### クイックルックで文字列を選択可能にする

```bash
defaults write com.apple.finder QLEnableTextSelection -bool true;killall Finder
```

### 他アプリに切り替えたらクイックルックを非表示

```bash
defaults write com.apple.finder QLHidePanelOnDeactivate -bool true;killall Finder
```


### Finderのウィンドウタイトルにフルパスを表示

```bash
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true;killall Finder
```


### 保存ダイアログボックスをデフォルトで詳細表示に設定

```bash
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true;killall Finder
```


### 印刷ダイアログボックスをデフォルトで詳細表示に設定

```bash
defaults write -g PMPrintingExpandedStateForPrint -bool true;killall Finder
```


### アイコンが非選択になってもプレビュー再生を継続

```bash
defaults write com.apple.finder AutoStopWhenSelectionChanges -bool false;killall Finder
```


### スクロールしてもプレビュー再生を継続

```bash
defaults write com.apple.finder AutoStopWhenScrollingOffBounds -bool false;killall Finder
```



### アイコンサイズに関係なくプレビュー再生できるようにする

```bash
defaults write com.apple.finder QLInlinePreviewMinimumSupportedSize -int 0;killall Finder
```

### ダウンロードしたファイルを開く際の警告ダイアログを無効化

```bash
defaults write com.apple.LaunchServices LSQuarantine -bool false;killall Finder
```


### クラッシュ報告を無効化

```bash
defaults write com.apple.CrashReporter DialogType none;killall Finder
```


### アプリを隠したらDock上のアイコンを半透明に設定

```bash
defaults write com.apple.dock showhidden -bool true;killall Dock
```


### Dockにしまう際のエフェクトをSuckに変更

```bash
defaults write com.apple.dock mineffect suck; killall Dock
```

