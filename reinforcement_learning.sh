# source: https://gist.github.com/phatblat/1713458
# Save script's current directory
DIR=$(pwd)

set -e
set -u
set -x


echo "############################"
echo "# ImageFlow https://github.com/HamedMP/ImageFlow"
echo "############################"
echo ""
echo "Deep Learning library for Python. Convnets, recurrent neural networks, and more. Runs on Theano or TensorFlow."
echo ""
echo "MANUAL STEPS REQUIRED - FIRST FOLLOW tensorflow.sh instructions"


# install https://github.com/HamedMP/ImageFlow
cd ~/src/
if [ ! -d ~/src/ImageFlow ]
then
	git clone https://github.com/HamedMP/ImageFlow.git
fi

cd ImageFlow
git pull
# sudo python setup.py install
python setup.py install --user



echo "############################"
echo "# Arcade Learning Environment arcadelearningenvironment.org"
echo "############################"
echo ""
echo "The Arcade Learning Environment (ALE) -- a platform for AI research.."
echo ""

sudo apt install -y libsdl1.2-dev libsdl-gfx1.2-dev libsdl-image1.2-dev cmake


# install https://github.com/mgbellemare/Arcade-Learning-Environment
cd ~/src/
if [ ! -d ~/src/Arcade-Learning-Environment ]
then
	git clone https://github.com/mgbellemare/Arcade-Learning-Environment.git
fi

cd Arcade-Learning-Environment
mkdir -p build && cd build
cmake -DUSE_SDL=ON -DUSE_RLGLUE=OFF -DBUILD_EXAMPLES=ON ..
make -j 22 install
cd ..
pip install --user




echo "############################"
echo "# Tensorpack https://github.com/ppwwyyxx/tensorpack"
echo "############################"
echo "To enable python code to support import tensorpack:"
echo "export PYTHONPATH=$PYTHONPATH:`readlink -f path/to/tensorpack`"


# install https://github.com/ppwwyyxx/tensorpack
cd ~/src/
if [ ! -d ~/src/tensorpack ]
then
	git clone https://github.com/ppwwyyxx/tensorpack.git
fi

cd tensorpack
git pull
pip install --user -r requirements.txt
# optional requirements
pip install --user -r requirements-opt.txt




echo "############################"
echo "# keras-rl https://github.com/matthiasplappert/keras-rl"
echo "############################"
echo ""
echo ""


# install https://github.com/ppwwyyxx/tensorpack
cd ~/src/
if [ ! -d ~/src/keras-rl ]
then
	git clone https://github.com/matthiasplappert/keras-rl.git
fi

cd keras-rl
git pull
# sudo python setup.py install
python setup.py install --user



echo "############################"
echo "# tflearn"
echo "############################"
echo ""
echo ""


# install https://github.com/tflearn/tflearn
cd ~/src/
if [ ! -d ~/src/tflearn ]
then
	git clone https://github.com/tflearn/tflearn.git
fi

cd tflearn
git pull
sudo python setup.py install






echo "############################"
echo "# https://github.com/Itsukara/async_deep_reinforce"
echo "############################"
echo ""
echo ""


# install https://github.com/Itsukara/async_deep_reinforce
cd ~/src/
if [ ! -d ~/src/async_deep_reinforce ]
then
	git clone https://github.com/Itsukara/async_deep_reinforce.git
fi

cd async_deep_reinforce
git pull





echo "############################"
echo "# https://github.com/yuyu2172/async-rl"
echo "############################"
echo ""
echo "fork of https://github.com/muupan/async-rl"


# install https://github.com/muupan/async-rl.git
cd ~/src/
if [ ! -d ~/src/async-rl ]
then
	git clone https://github.com/yuyu2172/async-rl.git
fi

cd async-rl
git pull
sudo python setup.py install




echo "############################"
echo "# https://github.com/Zeta36/Asynchronous-Methods-for-Deep-Reinforcement-Learning"
echo "############################"
echo ""
echo ""


# install https://github.com/Zeta36/Asynchronous-Methods-for-Deep-Reinforcement-Learning
cd ~/src/
if [ ! -d ~/src/zeta36_a3c ]
then
	git clone https://github.com/Zeta36/Asynchronous-Methods-for-Deep-Reinforcement-Learning.git zeta36_a3c
fi

cd zeta36_a3c
git pull
pip install pygame





echo "############################"
echo "# policy sketches"
echo "############################"
echo ""
echo "https://github.com/jacobandreas/psketch"


# install https://github.com/jacobandreas/psketch.git
cd ~/src/
if [ ! -d ~/src/psketch ]
then
	git clone https://github.com/jacobandreas/psketch.git
fi

cd psketch
git pull






cd $DIR
