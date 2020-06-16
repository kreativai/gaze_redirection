source activate tensorflow_p36

export CUDA_VISIBLE_DEVICES="-1"

FAKE_PATH=/home/ubuntu/data/fake_gaze_dataset/dataset/0P
REAL_PATH=/home/ubuntu/data/columbia_gaze_dataset/dataset/0P

if [ "$1" = "fake" ]; then
    echo "Using fake_dataset"

    if [ -d "./log/eval" ]; then
        echo "Deleting ./log/eval folder"
        rm -rf ./log/eval
    fi

    python main.py --mode eval --data_path $FAKE_PATH --log_dir ./log/ --batch_size 1 --cpu --ids 0

elif [ "$1" = "real" ]; then
    echo "Using columbia_test"
    python main.py --mode eval --data_path $REAL_PATH --log_dir ./log/ --batch_size 1 --cpu --ids 0

else
    echo " -- use fake or real"

fi
