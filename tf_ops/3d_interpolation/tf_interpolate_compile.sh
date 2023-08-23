# TF1.2
# g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-9.0/include -lcudart -L /usr/local/cuda-9.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0

# TF1.4
CUDA_ROOT=/usr/local/cuda-9.0
TF_ROOT=/home/jd/Desktop/learn_region_grow/venv/lib/python2.7/site-packages/tensorflow

g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC \
	-I $TF_ROOT/include \
	-I $CUDA_ROOT/include \
	-I $TF_ROOT/include/external/nsync/public \
	-lcudart \
	-L $CUDA_ROOT/lib64/ \
	-L $TF_ROOT \
	-ltensorflow_framework -O2 \
    -D_GLIBCXX_USE_CXX11_ABI=0
