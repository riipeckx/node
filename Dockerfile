FROM node:22-alpine
WORKDIR /app
ENV ENV=/home/node/.ashrc
COPY .ashrc /home/node/.ashrc 
RUN chown node:node /home/node/.ashrc &&\
    ln -s /etc/profile.d/color_prompt.sh.disabled /etc/profile.d/color_prompt.sh 
EXPOSE 3000
USER node