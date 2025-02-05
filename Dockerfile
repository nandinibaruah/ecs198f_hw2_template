# Nandini Baruah
# ECS 198F
# Homework 2
# Dockerfile with 3 Tasks

# Set Debian bookworm as the base image
FROM debian:bookworm

# Install the required dependencies
RUN apt-get update && apt-get install -y wget git && rm -rf /var/lib/apt/lists/*

# Download and install Miniconda with the latest installer
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /miniconda.sh && \
    bash /miniconda.sh -b -p /opt/miniconda && rm /miniconda.sh

# Set path for conda
ENV PATH="/opt/miniconda/bin:$PATH"

# Clone the python-helloworld repository
RUN git clone https://github.com/dbarnett/python-helloworld

# Set the working directory
WORKDIR /python-helloworld

# Initialize conda in the shell
RUN conda init bash && \
    conda install -y python=3.9

# Create default command
CMD ["python", "helloworld.py"]