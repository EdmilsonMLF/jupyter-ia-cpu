
# Jupyter Notebook com Suporte a GPU

Este projeto utiliza o Docker para criar um ambiente de Jupyter Notebook com suporte a GPU, incluindo bibliotecas populares para aprendizado de máquina e aprendizado profundo. O ambiente é baseado na imagem oficial do Jupyter Notebook e foi configurado para aproveitar a aceleração de hardware com a GPU.

## Requisitos

- Docker instalado na sua máquina.
- GPU compatível com CUDA.
- Driver da NVIDIA e Docker com suporte à GPU (NVIDIA Docker).
  
## Estrutura do Projeto

Este repositório contém o Dockerfile e o docker-compose.yml necessários para criar o ambiente e executar o JupyterLab com suporte a GPU.

### Dependências

- **TensorFlow** (versão GPU)
- **PyTorch** (versão GPU)
- Bibliotecas para aprendizado de máquina: **scikit-learn**, **xgboost**, **lightgbm**, **catboost**, etc.
- Ferramentas de análise de dados e gráficos: **pandas**, **matplotlib**, **seaborn**, **plotly**, etc.
- Bibliotecas para Web Scraping: **beautifulsoup4**, **scrapy**, **selenium**, etc.

## Como Usar

### 1. **Construir a Imagem Docker**

Execute o seguinte comando para construir a imagem Docker a partir do Dockerfile:

```bash
docker build -t jupyter_ia .
```

### 2. **Subir o Container**

Use o Docker Compose para subir o container com GPU habilitado:

```bash
docker-compose up
```

### 3. **Acessar o JupyterLab**

Após o container ser iniciado, abra o navegador e acesse:

```
http://localhost:8888
```

Acesse com o token vazio, configurado no `docker-compose.yml`.

## Notas

- Certifique-se de que sua máquina tem drivers NVIDIA instalados e configurados corretamente para usar a GPU.
- O JupyterLab será iniciado automaticamente, e você pode começar a usar as ferramentas de aprendizado de máquina e análise de dados.

## Contribuições

Se você deseja contribuir para este projeto, faça um fork do repositório, crie uma branch, faça suas modificações e envie um pull request.
