FROM mhart/alpine-node:10

ENV HOME=/home/app

COPY package.json package-lock.json $HOME/clinfacil/

WORKDIR $HOME/clinfacil

RUN npm install --silent --progress=false

COPY . .

EXPOSE 3000

CMD [ "npm", "run dev" ]
