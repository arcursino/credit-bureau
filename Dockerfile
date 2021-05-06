FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /notebooks
WORKDIR /notebooks

COPY requirements.txt /notebooks/
RUN pip install -r requirements.txt

RUN mkdir -p /.local/share/jupyter/runtime
RUN chmod -R 777 /.local


CMD jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root