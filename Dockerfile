# Use an official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# # Copy any files required for the build process e.g. webpack
COPY package*.json ./
# COPY .babelrc ./
# COPY .browserslistrc ./
# COPY .eslintrc ./
# COPY .sass-lint.yml ./
COPY gulpfile.js ./
# COPY jest.config.js ./
# COPY webpack.common.js ./
# COPY webpack.dev.js ./
# COPY webpack.prod.js ./

# # install any tools we might need for e.g. debugging
# RUN apt-get update 
# RUN apt-get install -y vim

# Install dependencies, including Gulp
RUN npm install

# Install Gulp globally
RUN npm install -g gulp

# Expose the port that Gulp may use (if needed)
EXPOSE 3000

# Run Gulp when the container starts
CMD ["gulp"]