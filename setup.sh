#!/bin/bash

echo "--------------------------------"
echo ". "

echo "[+] Install python-pip"
sudo apt-get remove --auto-remove python-pip -y
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo ln -s /usr/local/bin/pip /usr/bin/pip
sudo rm -rf get-pip.py

echo "[+] Install python-dev"
sudo apt-get install libhdf5-dev
sudo apt-get install python-pip python-dev

echo "--------------------------------"
echo ". "

echo "[+] Install TensorFlow"
export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.9.0rc0-cp27-none-linux_x86_64.whl
sudo pip install --upgrade $TF_BINARY_URL

echo "--------------------------------------------------------------"
echo ". "

echo "[+] Install a few extra packages"
sudo pip install --upgrade matplotlib
sudo pip install --upgrade scikit-learn
sudo pip install --upgrade git+git://github.com/tensorflow/skflow.git
sudo pip install --upgrade git+https://github.com/tflearn/tflearn.git
sudo pip install --upgrade h5py

echo "--------------------------------------------------------------"
echo ". "

echo "[+] Install a folder with examples"
git clone https://github.com/aymericdamien/TensorFlow-Examples.git TensorFlow-Examples
git clone https://github.com/tflearn/tflearn.git tflearn