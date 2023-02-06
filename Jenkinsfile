pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat "C:/apache-maven-3.8.6/bin/mvn clean package"
            }
        }
        stage('Test') {
            steps {
                bat "C:/apache-maven-3.8.6/bin/mvn test"
            }
        }
        stage('Deploy') {
            steps {
              bat 'docker build -t springbootjenkins:v1 .'
                  }
                   }
        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')]) {
                    bat 'docker login -u %DOCKER_HUB_USERNAME% -p %DOCKER_HUB_PASSWORD%'
                    bat 'docker tag springbootjenkins:v1 aitadioptoure/springbootjenkins:v1'
                    bat 'docker push aitadioptoure/springbootjenkins:v1'
                }
            }
        }
    }
}
