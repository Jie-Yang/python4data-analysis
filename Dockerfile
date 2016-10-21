FROM python:3.4.5
RUN apt-get update
RUN apt-get -y install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
COPY python_modules.txt ./
RUN pip install -r python_modules.txt
ENTRYPOINT python
