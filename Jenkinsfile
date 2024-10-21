pipeline {
    agent any
    tools {
        nodejs 'nodejs'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Run Server') {
            steps {
                sh 'npm start'
            }
        }
    }
}
