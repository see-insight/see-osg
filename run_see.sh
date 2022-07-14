#!/bin/bash


env

# Unpack your envvironment (with your packages), and activate it
tar -xzf see-segment.tgz 
export PYTHONPATH=$PWD/see-segment/packages:$PWD/see-segment/

# Run the Python script 
cd see-segment

python3 ./see/RunSearch.py --seed $(( $1 + $2 )) --num_iter 500 ./Image_data/Examples/AA_Chameleon.jpg  ./Image_data/Examples/AA_Chameleon_GT.png
echo "FINNISHED RUNNING SCRIPT"
