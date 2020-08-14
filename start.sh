#!/bin/sh
bert-serving-start -model_dir ./chinese_L-12_H-768_A-12/ -num_worker=4 -tuned_model_dir ./rasa_model_output/
