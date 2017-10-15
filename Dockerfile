FROM python:3.6

## Install stuff
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        libblas-dev \
        liblapack-dev \
        gfortran \
    && rm -rf /var/lib/apt/lists/*

# Create project directory
RUN mkdir -p /project
COPY requirements.txt /project/

RUN pip3 install --no-cache-dir --upgrade pip six
RUN pip3 install -r /project/requirements.txt

# Service definitions
EXPOSE 8888
CMD ["jupyter", "notebook", "--allow-root", "--NotebookApp.ip='*'", "--NotebookApp.open_browser=False"]
