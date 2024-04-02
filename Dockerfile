FROM alpine

WORKDIR /app

RUN apk add --no-cache python3 bluez py-pip git

COPY requirements.txt requirements.txt

RUN python3 -m venv venv
RUN venv/bin/pip3 install -r requirements.txt
RUN . venv/bin/activate

# copy files
COPY . .

CMD ["./addon_main.sh" ]
