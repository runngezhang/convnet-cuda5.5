#!/bin/sh
START=$(date +%s)
# do something
# start your script work here

python convnet.py --data-path=../cifar-10-py-colmajor/ --save-path=../cnntmp --test-range=5 --train-range=1-4 --layer-def=./example-layers/layers-conv-local-13pct.cfg --layer-params=./example-layers/layer-params-conv-local-13pct.cfg --data-provider=cifar-cropped --test-freq=13 --crop-border=4 --epochs=100

# your logic ends here
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"
