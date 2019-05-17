FROM ubuntu
LABEL maintainer="Luciano Zu"

RUN apt-get update && apt-get install -q -y xvfb libgtk-3-0 git && apt-get clean
RUN useradd -p developer -m -U developer

WORKDIR /home/developer

COPY ./eclipse-jee-2018-09-linux-gtk-x86_64.tar.gz /home/developer
RUN tar -xzvf eclipse-jee-2018-09-linux-gtk-x86_64.tar.gz && rm -rf eclipse-jee-2018-09-linux-gtk-x86_64.tar.gz && chown -R developer:developer eclipse

COPY ./jdk-8u181-linux-x64.tar.gz /home/developer
RUN tar -xzvf jdk-8u181-linux-x64.tar.gz -C / && rm -rf jdk-8u181-linux-x64.tar.gz && chown -R developer:developer /jdk1.8.0_181

USER developer

ENV JAVA_HOME /jdk1.8.0_181
ENV PATH $PATH:/home/developer/eclipse:$JAVA_HOME/bin

RUN mkdir -p /home/developer/workspaces/ardulink2 && \
    mkdir -p /home/developer/.m2

ENTRYPOINT ["bash"]
