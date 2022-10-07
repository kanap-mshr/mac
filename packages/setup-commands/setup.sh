#!/bin/bash

scriptName=$(basename $0)
currentDir=$(cd $(dirname $0);pwd)

echo "---------------------------------------"
echo "${scriptName} start"
echo "---------------------------------------"

echo "キー入力速度を高速化"
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

echo "Finderを開く時のアニメーションをOFF"
defaults write com.apple.finder DisableAllAnimations -boolean true;
killall Finder

echo "オートマチックウィンドウアニメーションをOFF"
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO


echo "アプリのデスクトップ間の移動速度を変更"
defaults write com.apple.dock workspaces-edge-delay -float 0.2
killall Dock

echo "Finderのアニメーションをすべて削除"
defaults write com.apple.finder AnimateInfoPanes -boolean false;
killall Finder

echo "ミッションコントロールのアニメーション時間を変更"
defaults write com.apple.dock expose-animation-duration -float 0.1;
killall Dock

echo "アイコンをドラッグした時のアニメーションをOFF"
defaults write com.apple.finder AnimateSnapToGrid -boolean false;
killall Finder

echo "ダイアログの表示速度を高速化"
defaults write -g NSWindowResizeTime 0.001

echo "ネットワークドライブで.DS_Storeファイルを作成しないようにする"
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

echo "スクリーンショットから影を取り除く"
defaults write com.apple.screencapture disable-shadow -boolean true;killall SystemUIServer

echo "Launchpadのアニメーションをすべて無効"
defaults write com.apple.dock springboard-show-duration -float 0
defaults write com.apple.dock springboard-hide-duration -float 0
defaults write com.apple.dock springboard-page-duration -float 0

echo "スムーズスクローリングをすべて無効"
defaults write -g NSScrollAnimationEnabled -bool false;

echo "クイックルック表示時のアニメーションをすべて無効"
defaults write -g QLPanelAnimationDuration -float 0

echo "リサイジングアニメーションをすべて無効"
defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false

echo "メール送信時,返信時のアニメーションをすべて無効"
defaults write com.apple.Mail DisableSendAnimations -bool true
defaults write com.apple.Mail DisableReplyAnimations -bool true

echo "カラムアニメーションをすべて無効"
defaults write -g NSBrowserColumnAnimationSpeedMultiplier -float 0

echo "ツールチップの表示を高速化"
defaults write -g NSWindowResizeTime 0.001

echo "アイコンをドラッグした時のアニメーションを高速化"
defaults write com.apple.finder AnimateSnapToGrid -boolean false; killall Finder

echo "クイックルックで表示したテキストをコピペ"
defaults write com.apple.finder QLEnableTextSelection -bool true; killall Finder

echo "Safariの表示速度、Webサイトのアイコンを非表示"
defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.25
defaults write com.apple.Safari WebIconDatabaseEnabled -boolean false

echo "ダッシュボードを無効にしてメモリ節約と高速化"
defaults write com.apple.dashboard mcx-disabled -boolean true; killall Dock

echo "Dockアニメーションを高速化"
defaults write com.apple.dock autohide-time-modifier -float 0;killall Dock
defaults write com.apple.dock autohide-delay -float 0;killall Dock

echo "Dockが表示される時間を0に設定"
defaults write com.apple.dock autohide-delay -float 0;killall Dock

echo "DashboardからWidgetをすべて削除"
defaults write com.apple.dashboard mcx-disabled -boolean YES;killall Dock

echo "ミッションコントロールのアニメーション時間を変更"
defaults write com.apple.dock expose-animation-duration -float 0.1;killall Dock

echo "アプリがデスクトップ間を移動する際の速度を変更"
defaults write com.apple.dock workspaces-edge-delay -float 0.2;killall Dock

echo "Finderのアニメーションをすべて削除"
defaults write com.apple.finder AnimateInfoPanes -boolean false;killall Finder

echo "隠しファイルを表示"
defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder

echo "通知センターをオフ"
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

echo "Finderのパス表示をホームフォルダを基準にする"
defaults write com.apple.finder PathBarRootAtHome -bool yes;killall Finder

echo "クイックルックで文字列を選択可能にする"
defaults write com.apple.finder QLEnableTextSelection -bool true;killall Finder

echo "他アプリに切り替えたらクイックルックを非表示"
defaults write com.apple.finder QLHidePanelOnDeactivate -bool true;killall Finder

echo "Finderのウィンドウタイトルにフルパスを表示"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true;killall Finder

echo "保存ダイアログボックスをデフォルトで詳細表示に設定"
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true;killall Finder

echo "印刷ダイアログボックスをデフォルトで詳細表示に設定"
defaults write -g PMPrintingExpandedStateForPrint -bool true;killall Finder

echo "アイコンが非選択になってもプレビュー再生を継続"
defaults write com.apple.finder AutoStopWhenSelectionChanges -bool false;killall Finder

echo "スクロールしてもプレビュー再生を継続"
defaults write com.apple.finder AutoStopWhenScrollingOffBounds -bool false;killall Finder

echo "アイコンサイズに関係なくプレビュー再生できるようにする"
defaults write com.apple.finder QLInlinePreviewMinimumSupportedSize -int 0;killall Finder


echo "ダウンロードしたファイルを開く際の警告ダイアログを無効化"
defaults write com.apple.LaunchServices LSQuarantine -bool false;killall Finder

echo "クラッシュ報告を無効化"
defaults write com.apple.CrashReporter DialogType none;killall Finder

echo "アプリを隠したらDock上のアイコンを半透明に設定"
defaults write com.apple.dock showhidden -bool true;killall Dock

echo "Dockにしまう際のエフェクトをSuckに変更"
defaults write com.apple.dock mineffect suck; killall Dock

echo "---------------------------------------"
echo "${scriptName} finish"
echo "---------------------------------------"
