FROM alpine

WORKDIR /app

COPY commandOne.sh .
COPY commandTwo.sh .

CMD ./commandOne.sh