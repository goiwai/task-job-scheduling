# Working with HTCondor

[Working with HTCondor (SS2025)](https://wiki.kek.jp/x/ZQWsH) 内で使用しているスクリプト類です。

1. [`hello-world`](hello-world): [`echo hello world` するだけのジョブを投入し、標準出力、標準エラー出力、ジョブ情報ログを回収します。](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-hello-world)
2. [`simple-single-job`](simple-single-job): [もう少しリソースを消費するジョブを投入。リソース（CPU・メモリ・ディスク容量）を要求するために必要な情報を得るための方法もあわせて紹介します。](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-simple-single-job)
3. [`on-shared-filesystem`](on-shared-filesystem): [ジョブ投入ホストとジョブ実行ホストの間で共有ファイルシステムが展開されている環境下で利用できる Job Description File の例を紹介します。](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-on-shared-filesystem) :warning: 演習用の環境はジョブ投入ホストとジョブ実行ホスト間に共有ファイルシステムが導入されていません。
4. [`multiple-jobs`](multiple-jobs): [ジョブにパラメータを与えて投入し、結果をパラメータごとに分けるための手法をいくつか紹介します。](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-multiple-jobs)
5. [`organise-jobs`](organise-jobs) ジョブ投入を繰り返すうちに散らかってしまいがちな Working Directory の整理整頓術を紹介します。
   5-1. [`1`](organise-jobs/1): [ファイル種別毎に整理する](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-organise-jobs/1(ファイル種別毎に整理整頓))
   5-2. [`2`](organise-jobs/2): [ファイルの入出力先を指定する方法](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-organise-jobs/2(ファイルの入出力先を指定))
6. [`dag-jobs`](dag-jobs): 依存関係を持つふたつ以上のジョブ (DAG Job) の記述式について説明します。
   6-1. [`1`](dag-jobs/1): [素直にひとつずつ依存関係を記述](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-dag-jobs/1(依存関係にある複数のジョブから構成されるジョブ))
   6-2. [`2`](dag-jobs/2): [パラメタライズして少しすっきり記述](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-dag-jobs/2(ジョブの本体部分にはパラメーターを渡してすっきり記述))
   6-3. [`3`](dag-jobs/3): [ジョブ投入ホスト上でジョブ投入前とジョブ実行後にスクリプトを実行する](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-dag-jobs/3(ジョブの前後に簡単な処理をジョブ投入ホストで実行する))
7. [`root`](root): [演習環境での ROOT 動作確認用マクロ](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-ROOT)
8. [`geant4`](geant4): [Geant4 ジョブ (Basic Example 5) を HTCondor に投入する](https://wiki.kek.jp/x/ZQWsH#WorkingwithHTCondor(SS2025)-Geant4ジョブをHTCondorに投入する(geant4))
