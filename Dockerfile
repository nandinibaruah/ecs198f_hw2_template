# Nandini Baruah
# ECS 198F
# Homework 2
# Dockerfile with 3 Tasks

# Set Debian bookworm operating system as the base image
FROM debian:bookworm

# Install Miniconda using the latest installer
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -b -p /opt/conda \
    && rm /tmp/miniconda.sh

# Clones the python-helloworld repo into the root directory
RUN git clone https://github.com/dbarnett/python-helloworld /python-helloworld