FROM jdk:8u202
ADD target/jenkins-test.jar /root/app.jar
ENV JAVA_HOME /opt/java
ENV PATH $JAVA_HOME/bin:$PATH
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENTRYPOINT ["java", "-jar", "/root/app.jar"]