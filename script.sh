#build the project
mvn clean package
#push to nexus repo
curl -v -u admin:Kav7@123456789 --upload-file target/java_war-1.0.0.war http://52.168.1.241:8081/repository/javawarfiles/java_executable_files/java_war_1.0.0.war
#copy the executable file to tomcat server
scp -r target/java_war-1.0.0.war kaveri@52.170.184.144:/home/kaveri/apache-tomcat-9.0.95/webapps
