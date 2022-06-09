SCRATCH="configs/PascalVOC-Detection/faster_rcnn_R_50_FPN_scratch.yaml"
COCO_PRETRAINED="configs/PascalVOC-Detection/faster_rcnn_R_50_FPN_coco_pretrained.yaml"
IMAGENET_PRETRAINED="configs/PascalVOC-Detection/faster_rcnn_R_50_FPN_imagenet_pretrained.yaml"

./train_net.py \
  --num-gpus 4 \
  --config-file ${IMAGENET_PRETRAINED}