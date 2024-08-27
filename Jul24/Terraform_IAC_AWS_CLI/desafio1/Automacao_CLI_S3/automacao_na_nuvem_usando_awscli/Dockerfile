FROM ubuntu:latest

# UPDATE AND DEPENDENCIES
RUN apt-get update -y && apt-get install -y\
  curl \
  unzip \
  zip \
  nano \
  git \
  sudo

# COM X86/X64
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"

# Install AWS CLI and session-manager-plugin
RUN unzip awscliv2.zip && ./aws/install
RUN sudo dpkg -i session-manager-plugin.deb && sudo apt-get install -f -y

# Cleanup
RUN rm -rf awscliv2.zip aws/ session-manager-plugin.deb

# COM ARM
# RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"

# RUN unzip awscliv2.zip
# RUN ./aws/install