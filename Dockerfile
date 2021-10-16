FROM debian
RUN apt update && apt install python3 python3-pip git netcat -y
RUN git clone https://github.com/Ashraf-wan/legend-bistro
RUN pip install -r legend-bistro/requirements.txt
EXPOSE 9999
RUN nc -l 9999 | python3 /legend-bistro/2.1/main.py
