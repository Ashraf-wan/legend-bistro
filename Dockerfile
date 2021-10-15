FROM debian
RUN apt update && apt install python3 python3-pip git netcat -y
RUN git clone https://github.com/Ashraf-wan/legend-bistro
RUN pip install -r legend-bistro/requirements.txt
RUN chmod u+x legend-bistro/2.1/script.sh
EXPOSE 9999
RUN nc -l 9999 | ./legend-bistro/2.1/script.sh
