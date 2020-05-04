FROM continuumio/anaconda3:latest

# install libraries
RUN conda install plotly && \
    conda install -c anaconda mysql-connector-python

RUN mkdir /opt/notebooks

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]