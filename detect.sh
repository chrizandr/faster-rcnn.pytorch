# VGG 16 PVOC
rm -rf output
rm -rf output_dir
mkdir output output_dir
python demo.py --cfg cfgs/vgg16.yml --dataset pascal_voc --net vgg16 --checksession 1 --checkepoch 6 --checkpoint 10021 --cuda --load_dir models/ --image_dir /home/chrizandr/sports/detection_exp/annotated/
mv output vgg16_pascal_img
mv output_dir vgg16_pascal_out

# Resnet PVOC
rm -rf output
rm -rf output_dir
mkdir output output_dir
python demo.py  --cfg cfgs/res101.yml --dataset pascal_voc --net res101 --checksession 1 --checkepoch 7 --checkpoint 10021 --cuda --load_dir models/ --image_dir /home/chrizandr/sports/detection_exp/annotated/
mv output res101_pascal_img
mv output_dir res101_pascal_out

# Resnet COCO
rm -rf output
rm -rf output_dir
mkdir output output_dir
python demo.py --cfg cfgs/res101_ls.yml --net res101 --dataset coco --checksession 1 --checkepoch 10 --checkpoint 14657 --cuda --load_dir models/ --image_dir /home/chrizandr/sports/detection_exp/annotated/
mv output res101_coco_img
mv output_dir res101_coco_out
