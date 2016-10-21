FROM python:3.4.5
COPY python_modules.txt /
RUN pip install -r python_modules.txt
RUN apt-get update
RUN apt-get -y install python-numpy python-scipy python-matplotlib python-pandas python-sympy
ENTRYPOINT python
