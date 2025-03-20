# Use Ubuntu as the base image
FROM ubuntu:latest

# Install dependencies
RUN apt update && apt install -y python3 python3-pip

# Install Python libraries
RUN apt update && apt install -y python3-pip python3-numpy python3-pandas python3-seaborn python3-matplotlib python3-sklearn python3-scipy


#/Users/mohamed3wes/programming/bd-a1

# Copy dataset into the container
COPY train_titanic.csv /Users/mohamed3wes/programming/bd-a1

# Set working directory
WORKDIR /home/doc-bd-a1
COPY . /home/doc-bd-a1/



# Open bash shell upon startup
CMD ["/bin/bash"]