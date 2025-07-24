#! /bin/sh
bsub -J 'CreateInput' /bin/bash create-input.sh
bsub -w 'done("CreateInput")' -J 'CalcMd5[1-3]' /bin/bash calc-md5.sh
bsub -w 'done("CalcMd5")' -J 'MergeResults' /bin/bash merge-results.sh
