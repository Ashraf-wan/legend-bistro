FROM debian
RUN apt update && apt install python3 python3-pip git netcat -y
RUN git clone https://github.com/Ashraf-wan/legend-bistro
EXPOSE 9999
RUN nc -l 9999 --exec "./2.1/script"