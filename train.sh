DATA=/home/ubuntu/data/columbia_gaze_dataset/dataset/all/
VGG=/home/ubuntu/data/ckpts/vgg_16.ckpt

python main.py \
	--mode train \
	--data_path $DATA \
	--log_dir ./log/ \
	--batch_size 32 \
	--vgg_path $VGG \

