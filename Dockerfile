FROM centos
RUN yum update -y; yum -y install python3 python3-devel git mysql-devel gcc
RUN pip3 install Flask requests flask-mysqldb pyyaml
RUN mkdir /app
RUN chown 1001 /app
USER 1001
RUN cd /app ; git clone https://github.com/raveekirann/proj1.git .
USER 0
RUN yum -y remove git
USER 1001
WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_ENV=development
EXPOSE 5000
CMD ["python3","-m", "flask","run","--host=0.0.0.0" ]
