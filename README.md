
# Jupyter Notebook sem Suporte a GPU

Este projeto utiliza o Docker para criar um ambiente de Jupyter Notebook sem suporte a GPU. Ele está configurado para rodar aprendizado de máquina, aprendizado profundo e análise de dados, utilizando a CPU em vez da aceleração de hardware da GPU.

## Requisitos

- Docker instalado na sua máquina.
  
## Estrutura do Projeto

Este repositório contém o Dockerfile e o docker-compose.yml necessários para criar o ambiente e executar o JupyterLab com suporte a CPU.

### Dependências

- **TensorFlow** (versão para CPU)
- **PyTorch** (versão para CPU)
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

Use o Docker Compose para subir o container:

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

- O JupyterLab será iniciado automaticamente, e você pode começar a usar as ferramentas de aprendizado de máquina e análise de dados.
- Como não há suporte para GPU, o TensorFlow e o PyTorch serão executados na CPU, o que pode ser mais lento para modelos grandes.

## Contribuições

Se você deseja contribuir para este projeto, faça um fork do repositório, crie uma branch, faça suas modificações e envie um pull request.
