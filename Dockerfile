# Use the official Ubuntu 18.04 image as the base image
FROM ubuntu:18.04

VOLUME /app

# Set the working directory
WORKDIR /app

# Update the package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    python \
    libncurses5-dev \
    wget unzip file cvs git subversion cpio rsync bc

# Copy application files to the working directory
COPY . .

# Set the blueberrypi defconfig
# RUN make licheepi_zero_custom_defconfig

CMD [ "bash" ]
