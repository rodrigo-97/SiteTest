pipeline {
    agent any

    stages {
        stage('Preparação') {
            steps {
                sh 'echo CLONANDO PROJETO'
                git 'https://github.com/rodrigo-97/SiteTest.git'
            }
        }

        stage('Instalação') {
            steps {
                sh 'echo INSTALANDO DEPENDÊNCIAS'
                sh 'npm install'
            }
        }

        stage('Executar Servidor') {
            steps {
                sh 'echo SUBINDO NA PORTA 3000'
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
