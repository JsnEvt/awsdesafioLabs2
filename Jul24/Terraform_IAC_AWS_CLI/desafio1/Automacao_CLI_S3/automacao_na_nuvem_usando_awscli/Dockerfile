FROM ubuntu:latest

# UPDATE AND DEPENDENCIES
RUN apt-get update -y
RUN apt-get install curl unzip zip nano git -y
RUN apt update
RUN apt install sudo

# COM X86/X64
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
RUN sudo dpkg -i session-manager-plugin.deb
RUN sudo apt-get install -f


# COM ARM
# RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"

RUN unzip awscliv2.zip
RUN ./aws/install