 pipeline {
    agent any
    stages {
        stage(‘Build’) {
            steps {
                 sh "/apache-maven-3.8.6/bin/mvn clean package"
            }
        }
        stage(‘Test’) {
            steps {
                 sh "/apache-maven-3.8.6/bin/mvn test"
            }
        }
    }
 }
