FROM debian
RUN apt update && apt dist-upgrade -y
RUN apt install python3 python3-pip 
RUN pip3 install flask
