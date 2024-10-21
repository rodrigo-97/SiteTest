pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'master', url: 'https://github.com/rodrigo-97/SiteTest.git'
            }
        }
        stage('Stop Existing Container') {
            steps {
                script {
                    sh 'docker stop app-test || true'
                    sh 'docker rm app-test || true'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t app-test .'
                }
            }
        }
        stage('Run New Container') {
            steps {
                script {
                    sh 'docker run -d -p 3333:80 app-test'
                }
            }
        }
    }
}
