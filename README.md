## Introduction
支持rasa json数据格式的bert finetune

## Prepare
在训练finetune模型前需要先download bert pre-train model，这里用的是中文的，可去官网下载*chinese_L-12_H-768_A-12*。
rasa json格式的数据，放置在当前目录data文件夹下，train的json文件名为*rasa_dataset_training.json*，dev的json文件名为*rasa_dataset_testing.json*，当然你可以在**run_classifier.py**代码里面做相应的修改。

conda create --name rasa_bert  python=3.6  
3.7可能有问题  
conda activate rasa_bert  
## Version
```
pip install bert-serving-server==1.8.9
pip install bert-serving-client==1.8.9


#pip install tensorflow==1.14.0
pip install numpy==1.16.4
pip install scikit-learn==0.20.4
pip install tensorflow==1.13.2
pip install gevent==1.5.0
```

## Command
```
sh run.sh
```

git clone https://github.com/killinux/rasa-bert-finetune  
cd rasa-bert-finetune  

测试  
 bert-serving-start -model_dir ./chinese_L-12_H-768_A-12/ -num_worker=4  

./run.sh

生成./rasa_model_output/  

bert-serving-start -model_dir ./chinese_L-12_H-768_A-12/ -num_worker=4 -tuned_model_dir ./rasa_model_output/  


如果缺文件 bert_model.ckpt 就  
cp chinese_L-12_H-768_A-12/* rasa_model_output  
启动后 
netstat -abn|grep 5555  
netstat -abn|grep 5556  








