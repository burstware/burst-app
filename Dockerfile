FROM node as builder

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json ./
RUN yarn

# Copying source files
COPY . .

# Building app
RUN yarn build

# Running the app
EXPOSE 3000
CMD [ "yarn", "dev" ]