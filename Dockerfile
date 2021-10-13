FROM debian

RUN apt update && apt install python3 python3-pip git

RUN git clone https://github.com/Ashraf-wan/legend-bistro

RUN python3 legend-bistro/2.1/main.py
