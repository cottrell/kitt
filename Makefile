# NOTE: run source.sh first to activate env
# NOTE: see https://github.com/frgsimpson/kitt/issues/1
all:
	cat Makefile

generate_dataset:
	# not sure what the difference is between all and this one
	python kitt/prototype/scripts/generate_dataset.py

generate_all_datasets:
	# takes a long time
	python kitt/prototype/scripts/generate_all_datasets.py
	# datasets$ find .
	# .
	# ./test_one_channel
	# ./test_one_channel/train.h5
	# ./test_one_channel/tokenizer.pickle
	# ./test_one_channel/test.h5
	# ./test_no_channel
	# ./test_no_channel/train.h5
	# ./test_no_channel/tokenizer.pickle
	# ./test_no_channel/test.h5
	# ./full-kitt.tar.gz
	# ./test_no_channel.tar.gz
	# ./test_one_channel.tar.gz


train:
	python kitt/prototype/scripts/train_classifier.py
	# OSError: Unable to open file (unable to open file: name = '/home/cottrell/dev/kitt/datasets/64_4d_max_exp_1_prod_2_random_inputs/train.h5', errno = 2, error message = 'No such file or directory', flags = 0, o_flags = 0)

