=begin

$Id: ChangeLog.ja.rd,v 1.145 2008/06/22 14:56:38 arton Exp $

= Exerb - ChangeLog

== ...

* 開発版コアをRuby 1.9.0(Rev.11888)に変更
* コンパイル済みスクリプトの実行に対応
* プリコンパイルに対応

== 4.6.0

* 安定版コアをRuby 1.8.7-p22(2008-6-20)に変更
* Winsock2を利用するように変更

== 4.5.0

* 安定版コアをRuby 1.8.7-p17(2008-6-9)に変更

== 4.4.0

* 安定版コアをRuby 1.8.6-p114(2008-3-3)に変更

== 4.3.0

* 安定版コアをRuby 1.8.6-p110(2007-9-23)に変更

== 4.2.0

* 安定版コアをRuby 1.8.6-p36(2007-6-9)に変更

== 4.1.0

* 安定版コアをRuby 1.8.5-p12(2006-12-25)に変更
* defファイル生成用スクリプト(src/libruby18/mkdef.rb)を追加
* プロジェクトファイルと構成ファイル更新スクリプト(src/prepare18.rb)を追加

== 4.0.0

* ドキュメントを一新
* 安定版コアをRuby 1.8.4(2005-12-24)に変更
* 開発版コアをRuby 1.9.0(2006-05-11)に変更
* 1ステップ生成機能を追加
* レシピファイルのフォーマットをYAMLに変更
* mkexrコマンドを削除、mkexyコマンドを正式に追加
* アイコン、バージョン情報リソースの指定機能を追加
* プラグイン機能を削除
* exerb.bat、mkexy.batにスクリプトを埋め込むように変更
* 実行時モジュールの名称をExerbRuntimeに変更
* 実行時モジュールの使用例を追加
* Ruby/Tkを使用した使用例を追加
* EXERBCORE環境変数によるコアファイルの検索ディレクトリ指定を追加
* コアファイルのリソースをニュートラル言語に変更
* CUIコアファイルからアイコンリソースを削除
* setup.rbを3.4.1に変更

== 3.3.2

* 安定版コアをRuby 1.8.2(2005-05-07)に変更

== 3.3.1

* GUI版コアでコマンド引数が渡らない不具合を修正

== 3.3.0

* Rubyを1.8.2に変更
* setup.rbを3.2.4に変更
* exerbコマンドに--config(-i)オプションを追加
* 試験的にmkexyコマンドを追加
* 試験的にYAML版レシピファイル対応を追加

== 3.2.0

* アクセス保護属性の変更方法を変更
* GUIインタフェースを追加
* Ruby 1.9.0用のプロジェクトファイルを追加
* バージョン情報リソースからRubyのバージョン番号を削除

== 3.1.0

* 関数アドレスの置換処理を抑制するオプションを追加

== 3.0.0

* Rubyを1.8.1に変更

== 3.0.0-preview9

* Rubyを1.8.1-preview4に変更

== 3.0.0-preview8

* Ruby/Tkに対応
* 関数アドレスの置換処理に関数名を使用しないように変更
* GetModuleHandle関数によるDLLハンドルの取得に対応

== 3.0.0-preview7

* LoadLibrary関数によるDLLのロードに対応
* Rubyを1.8.1-preview3に変更

== 3.0.0-preview6

* 不足していたファイルを追加

== 3.0.0-preview5

* アーカイブをリソースに格納するように変更
* exerbコマンドに-e/--executeオプションを追加
* mkexaコマンドを追加
* GUI版コアで標準入出力を使用してもエラーにならないように修正
* テストケースを更新

== 3.0.0-preview4

* リソースの生成機能を追加

== 3.0.0-preview3

* Exerbモジュールにopen、filepath、filenameメソッドを追加
* $Exerbグローバル変数を追加
* Exerb自身のレシピファイルを追加
* ファイルのオープンモードを修正
* 新しい仕様をドキュメントに一部反映

== 3.0.0-preview2

* 拡張ライブラリの依存関係を解決する機能を追加
* mkexrコマンドを追加
* 実行ファイルがWindows98で動作しないバグを修正
* コアファイルをdataディレクトリに移動
* Rubyを1.8.1-preview2に変更

== 3.0.0-preview1

* スクラッチから再開発
* インポートテーブル置換処理を変更
* リソースライブラリ機能を追加
* プラグイン機能を追加
* レシピファイルのフォーマットを変更
* exerbコマンドのオプションを変更
* Apollo対応コードを一時的に削除
* 拡張子を変更
* Rubyを1.8.1-preview1に変更
* install.rbをsetup.rb(3.2.1)に変更

== 2.6.7

* Ruby/Zlib 0.6.0に対応
* Ruby 1.8系コアをRuby 1.8.0に変更
* cygruby18.dllに対応

== 2.6.6

* Ruby 1.8系コアをRuby 1.8.0 preview3に変更

== 2.6.5 (誕生日記念リリース)

* 自動コンパイル機能を追加

== 2.6.4

* bRuby対応スタンドアロン版コアを追加

== 2.6.3

* Ruby 1.8.0 preview2のソースコードを追加
* bRubyを0.0.7に変更
* bRuby用の関数をエクスポート
* exitで終了した場合に終了コードを返すように変更
* exerbコマンドで生成した実行ファイルに実行属性を設定するように変更

== 2.6.2

* bRubyを0.0.6に変更
* エラーメッセージ関係を整理
* ドキュメントを更新

== 2.6.1

* bRubyを0.0.5に変更
* ランタイムDLL版コアでbRubyが無効になっていた問題を修正

== 2.6.0

* bRubyに対応
* Cygwin/MinGWに暫定的に対応
* exerb.rbに-v/--verboseオプションを追加
* mkrbc.rbにMakefileを生成する機能を追加
* Exerbモジュールにfilepath、filenameメソッドを追加
* Exerbモジュールにloadicon、loadcursorメソッドを試験的に追加
* スタートアップスクリプトの検索方法を変更

== 2.5.1

* 外部ファイルのrequireに対応
* MSVCRTをダイナミックリンクするように変更

== 2.5.0

* ランタイムDLL版コアを追加
* CUI版とGUI版のソースコードを分離

== 2.4.0

* Rubyを1.6.8に変更

== 2.3.2

* ファイル名に.を含むファイルをrequireできないバグを修正

== 2.3.1

* exerb.rbに--versionオプションを追加
* exerb.rbの--helpオプションの出力内容を変更
* レシピファイルにcorename、corefile、output指定子を追加

== 2.3.0

* Ruby 1.7系コアを追加
* ChangeLog.en.rdを追加
* rb_f_require関数によるrequireに対応
* Apollo(ほとんどのso)に対応
* アーカイブ圧縮機能を追加
* コアの最適化オプションを[サイズ優先]に変更

== 2.2.0

* Apollo(phi.so)に対応
* 設定ファイル(exerb/config.rb)周りを変更

== 2.1.0

* rb_require関数によるrequireに対応
* エラーメッセージを多言語化（日本語/英語）
* 拡張ライブラリの読み込み数制限がなくなった
* アーカイブ内ファイル検索時の拡張子の優先順位を変更
* 内部の実装を整理

== 2.0.0

* インストーラを追加
* コマンドラインインタフェースを変更
* ライブラリを分割
* ライブラリの位置を変更
* メッセージをすべて英語化
* 例外ダイアログを多言語化（日本語/英語）
* 定義ファイルにフルパスが使用できないバグを修正
* 正規表現のコンパイルに失敗するバグを修正
* インポートテーブルの修正に失敗するバグを修正

== 1.0.0

* Rubyを1.6.7に変更
* CUI版コアを作成
* 漢字コードを指定できるように変更
* 例外ダイアログのデザインを変更
* ユニットテストを作成
* 英語版READMEを作成
* 不要な文字列のエクスポートを削除
* いくつかのバグを修正

== preview1

* 初版

=end
