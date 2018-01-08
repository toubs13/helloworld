FROM java:8
COPY src /home/root/helloworld/src
WORKDIR /home/root/helloworld
RUN mkdir bin
RUN javac -d bin src/Hello.java
ENTRYPOINT ["java", "-cp", "bin", "Hello"]
