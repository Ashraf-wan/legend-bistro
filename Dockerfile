FROM debian
RUN apt update && apt dist-upgrade -y
RUN apt install python3 python3-pip git
RUN pip3 install flask
RUN git clone https://github.com/Ashraf-wan/legend-bistro
WORKDIR "legend-bistro/4.0"
EXPOSE "8080"
RUN python3 main.py
