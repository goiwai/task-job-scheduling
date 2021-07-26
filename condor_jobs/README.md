# HTCondor

[以下の順に解説を進めます。必要性の高そうな順に並べていますので飽きたら途中でやめて他の課題に取り組むとよろしいです。](https://wiki.kek.jp/pages/viewpage.action?pageId=161482253#TaskandJobScheduling%EF%BC%88SS2021%EF%BC%89-HTCondor)

1. [`hello_world`](hello_world): `echo hello world` するだけのジョブを投入し、標準出力、標準エラー出力、ジョブ情報ログを回収。
2. [`simple_single_job`](simple_single_job): もう少しリソースを消費するジョブを投入。リソース（CPU・メモリ・ディスク容量）を要求するために必要な情報を得るための方法を紹介。
3. [`on_shared_filesystem`](on_shared_filesystem): ジョブ投入ホストとジョブ実行ホストの間で共有ファイルシステムが展開されているケースの Job Description File の例。
4. [`multiple_jobs`](multiple_jobs): ジョブにパラメータを与えて投入し、結果をパラメータごとに分けるための手法をいくつか紹介。
5. [`organize_jobs_1`](organize_jobs_1) ジョブ投入を繰り返すうちに散らかってしまいがちな Working Direcotry の整理整頓術 -その1-
6. [`organize_jobs_2`](organize_jobs_2): ジョブ投入を繰り返すうちに散らかってしまいがちな Working Direcotry の整理整頓術 -その2-
7. [`dag_jobs1`](dag_jobs1): 依存関係を持つふたつ以上のジョブ (DAG Job) の記述式 -ベタな書き方-
8. [`dag_jobs2`](dag_jobs2): 依存関係を持つふたつ以上のジョブ (DAG Job) の記述式 -パラメタライズして少しスマートに-
9. [`dag_jobs3`](dag_jobs3): ジョブ投入ホスト上でジョブの前後でスクリプトを走らせる Job Description File の書き方
