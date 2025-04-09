pipeline {
    agent any
    tools {
        maven 'maven-3.9.9'    // Add Maven in Jenkins Tools config
    }
    environment {
        SONARQUBE = 'SonarQube' // Jenkins Sonar server name
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/hitu-1995/sonarRepo.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'mvn sonar:sonar'
                }
            }
        }
    }
}
