# HTCondor

[以下の順に解説を進めます。必要性の高そうな順に並べていますので飽きたら途中でやめて他の課題に取り組むとよろしいです。](https://wiki.kek.jp/pages/viewpage.action?pageId=298123661#TaskandJobScheduling%EF%BC%88SS2023%EF%BC%89-HTCondor)

1. [`hello-world`](hello-world): `echo hello world` するだけのジョブを投入し、標準出力、標準エラー出力、ジョブ情報ログを回収。
2. [`simple-single-job`](simple-single-job): もう少しリソースを消費するジョブを投入。リソース（CPU・メモリ・ディスク容量）を要求するために必要な情報を得るための方法を紹介。
3. [`on-shared-filesystem`](on-shared-filesystem): ジョブ投入ホストとジョブ実行ホストの間で共有ファイルシステムが展開されているケースの Job Description File の例。
4. [`multiple-jobs`](multiple-jobs): ジョブにパラメータを与えて投入し、結果をパラメータごとに分けるための手法をいくつか紹介。
5. [`organise-jobs`](organise-jobs) ジョブ投入を繰り返すうちに散らかってしまいがちな Working Direcotry の整理整頓術
   5-1. [`1`](organise-jobs/1): -その1-
   5-2. [`2`](organise-jobs/2): -その2-
6. [`dag-jobs`](dag-jobs): 依存関係を持つふたつ以上のジョブ (DAG Job) の記述式
   6-1. [`1`](dag-jobs/1): ベタな書き方
   6-2. [`2`](dag-jobs/2): パラメタライズして少しスマートに
   6-3. [`3`](dag-jobs/3): ジョブ投入ホスト上でジョブの前後でスクリプトを走らせる Job Description File の書き方
