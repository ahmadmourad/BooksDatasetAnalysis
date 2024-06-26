FROM jupyter/datascience-notebook:latest

WORKDIR /home/jovyan/work/

COPY . /home/jovyan/work/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]

