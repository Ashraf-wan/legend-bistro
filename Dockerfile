FROM debian
RUN apt update && apt install python3 python3-pip git netcat -y
RUN git clone https://github.com/Ashraf-wan/legend-bistro
RUN pip install -r requirements.txt
RUN cd legend-bistro/2.1
RUN chmod +x script.sh
EXPOSE 9999
RUN nc -l 9999 | ./script.sh
