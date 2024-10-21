pipeline {
    agent any

    stages {
        stage('Preparação') {
            steps {
                git 'https://github.com/rodrigo-97/SiteTest.git'
            }
        }

        stage('Instalação') {
            steps {
                sh 'npm install'
            }
        }

        stage('Executar Servidor') {
            steps {
                sh 'npx serve -l 3000'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
