# 《神经网络与深度学习》期末项目

林恒旭 21210980049

刘竹君 21210980052

2022年6月12日

视频/模型下载地址：

- [语义分割视频](https://pan.baidu.com/s/1gCEd9LEYd4J5fxZ8VNlfFA?pwd=1qfy)

- [Faster R-CNN（COCO+ImageNet预训练、ImageNet预训练、随机初始化）](https://pan.baidu.com/s/1FMh7eBFnIl1_qaqWTZl3MA?pwd=a0nv)

## 基于Faster R-CNN的VOC目标检测

### 任务要求

对Faster R-CNN模型，分别进行以下训练：

1. 随机初始化训练VOC
2. ImageNet预训练backbone网络，然后使用VOC进行fine tune
3. 使用coco训练的Mask R-CNN的backbone网络参数，初始化Faster R-CNN的backbone网络，然后使用VOC进行fine tune

### 运行方法

1. 转到目标检测文件夹

   ```{bash}
   cd object_detection
   ```

2. 重现虚拟环境

   ```{bash}
   conda env create -f environment.yaml
   ```

3. 下载VOC数据集，并放置在`datasets`文件夹下

   ```{bash} 
   # 下载
   wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtrainval_06-Nov-2007.tar
   wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtest_06-Nov-2007.tar
   wget http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar
   # 解压
   tar xvf VOCtest_06-Nov-2007.tar
   tar xvf VOCtrainval_06-Nov-2007.tar
   tar xvf VOCtrainval_11-May-2012.tar
   # 移动
   mv VOCdevkit/VOC2007 datasets/VOC2007
   mv VOCdevkit/VOC2012 datasets/VOC2012
   ```

4. 训练模型（可修改配置文件路径）

   ```{bash}
   bash run.sh
   # 如果想要修改配置文件，可以在run.sh里修改 
   # --config-file ${IMAGENET_PRETRAINED}/${SCRATCH}/${COCO_PRETRAINED}
   ```

5. 可下载已经训练好的模型，并放置在`data`文件夹下（[Faster R-CNN（COCO+ImageNet预训练、ImageNet预训练、随机初始化](https://pan.baidu.com/s/1FMh7eBFnIl1_qaqWTZl3MA?pwd=a0nv)）

6. 模型结果可视化

   ```{python}
   # 在inference.ipynb中调用visualize函数
   visualize(<your config path>, <your inference directory>, <your title>)
   ```


#### 训练结果

下表为三种模型的训练阶段AP变化情况，橙色曲线代表COCO+ImageNet预训练模型，红色曲线代表ImageNet预训练模型，蓝色曲线代表随机初始化模型。

![image-20220609164829567](figs/image-20220609164829567.png)
