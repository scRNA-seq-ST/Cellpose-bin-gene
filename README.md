 # **Get cells location by cellpose**
 ### Cellpose
cellpose is an AI software, we can use it by GUI or API. 

In this job we try to divide our large picture (about 2G) 

to N*M patches. For example, DY=4, DX=3, we will get 12 patches.

Finally, we try to get the masks denoted where cells' location.

![cellpose](pictures\Figure 1.png)

### install
ref requirements.txt

### Usage
the demo data in data\demo_fluo.h5

#### **step 1:**

command in Terminal: `python get_cellpose_outlines.py --path data\demo_fluo.h5 --divide_y 2 --divide_x 2 --save_flod data`

*--divide_y ,,,,, --divide_x* \
if you have a picture with size 3000 X 3000 \
then --divide_y 2 --divide_x 5 \
turn to be (picture: 1500 X 600) X (10 patches)

#### **step 2:**

command in Terminal: `python get_gene_masks --path data\demo_fluo.h5 --cellpose_mask_path data\cellpose_masks.txt --save_flod data` \

* you well get files :*scatter_mask.txt, incell_mask.txt, ingroup_mask.txt* as demo.ipynb shown.
![Figure2](pictures\Figure 2.png)
![Figure3](pictures\Figure 3.png)
![Figure4](pictures\Figure 4.png)
![Figure5](pictures\Figure 5.png)