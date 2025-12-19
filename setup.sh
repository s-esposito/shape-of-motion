conda create -n som python=3.10 -y
conda activate som
conda install -c "nvidia/label/cuda-12.1.0" cuda-toolkit
pip install torch==2.2.0 torchvision==0.17.0 torchaudio==2.2.0 --index-url https://download.pytorch.org/whl/cu121
pip install git+https://github.com/nerfstudio-project/gsplat.git --no-build-isolation
pip install -r requirements.txt
conda install -c rapidsai -c conda-forge -c nvidia cuml cuda-version=12.1
pip install "numpy<2"
pip install cupy-cuda12x