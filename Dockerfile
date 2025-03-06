# Usar a imagem oficial do Jupyter Notebook com suporte a GPU (CUDA e cuDNN)
# FROM nvcr.io/nvidia/tensorflow:23.12-tf2-py3  # TensorFlow com CUDA e cuDNN
FROM tensorflow/tensorflow:latest-gpu

# Alternativa: Se preferir PyTorch, use a imagem abaixo
# FROM nvcr.io/nvidia/pytorch:23.12-py3  # PyTorch com CUDA e cuDNN

# Definir o diretório de trabalho
WORKDIR /home/jovyan

# Atualizar pacotes e instalar bibliotecas essenciais
RUN apt-get update && apt-get install -y \
    graphviz \
    && rm -rf /var/lib/apt/lists/*

# Instalar pacotes para aprendizado de máquina, aprendizado profundo, gráficos, análise estatística e Web Scraping
RUN pip install --upgrade pip

RUN pip install --no-cache-dir \
    numpy \
    pandas \
    matplotlib \
    seaborn \
    scikit-learn \
    tensorflow \
    torch torchvision torchaudio \
    statsmodels \
    xgboost \
    lightgbm \
    catboost \
    opencv-python-headless \
    h5py \
    joblib \
    tqdm \
    requests \
    pyarrow \
    fastparquet \
    xlrd openpyxl \
    plotly \
    missingno \
    pydot graphviz \
    beautifulsoup4 \
    lxml \
    html5lib \
    requests-html \
    scrapy \
    selenium

# Definir variáveis de ambiente para uso da GPU
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility

# Expor a porta do Jupyter Notebook
EXPOSE 8888

# Comando de inicialização do Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

