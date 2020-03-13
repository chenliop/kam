
## Requirements
* docker
* docker-compose

## Devevlopment Setup

1. git clone https://github.com/Python35/kam.git

2. docker-compose up

Output

`Creating network "kam_default" with the default driver
Creating kam_jupyter_1 ... 
Creating kam_jupyter_1 ... done
Attaching to kam_jupyter_1
jupyter_1  | Executing the command: jupyter notebook
jupyter_1  | [I 11:05:50.986 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
jupyter_1  | [I 11:05:51.578 NotebookApp] JupyterLab extension loaded from /opt/conda/lib/python3.7/site-packages/jupyterlab
jupyter_1  | [I 11:05:51.578 NotebookApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
jupyter_1  | [I 11:05:51.582 NotebookApp] Serving notebooks from local directory: /home/jovyan/work
jupyter_1  | [I 11:05:51.582 NotebookApp] The Jupyter Notebook is running at:
jupyter_1  | [I 11:05:51.582 NotebookApp] http://96362166384c:8888/?token=0ee9abf3066767b38b9d422179e2da17fdb751d230d12a83
jupyter_1  | [I 11:05:51.582 NotebookApp]  or http://127.0.0.1:8888/?token=0ee9abf3066767b38b9d422179e2da17fdb751d230d12a83
jupyter_1  | [I 11:05:51.582 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
jupyter_1  | [C 11:05:51.587 NotebookApp] 
jupyter_1  |     
jupyter_1  |     To access the notebook, open this file in a browser:
jupyter_1  |         file:///home/jovyan/.local/share/jupyter/runtime/nbserver-6-open.html
jupyter_1  |     Or copy and paste one of these URLs:
jupyter_1  |         http://96362166384c:8888/?token=0ee9abf3066767b38b9d422179e2da17fdb751d230d12a83
jupyter_1  |      or `**`http://127.0.0.1:8888/?token=0ee9abf3066767b38b9d422179e2da17fdb751d230d12a83`**`

3. Open Jupyter

http://127.0.0.1:8888/?token=0ee9abf3066767b38b9d422179e2da17fdb751d230d12a83


## Create Image for Demo purposes

Create Demo Image with loaded data, code and installed packages

**Change TAG to name of demo**

1. docker build -t objectivepartner/weatherproject:TAG -f Dockerfile.demo .
2. docker login -u objectivepartner docker.io
3. docker push objectivepartner/weatherproject:TAG

## Use Demo Image

docker run -p 8888:8888 objectivepartner/weatherproject:TAG

## Install new Packages
**Requirements**
* Dev Setup
 
1. docker exec -it kam_jupyter_1 pip install -r requirements.txt

or

1. Add Packages to requirements.txt
2. Open new Jupyter Terminal 
3. pip install -r requirements.txt


