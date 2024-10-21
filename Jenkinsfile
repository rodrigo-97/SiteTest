pipeline {
    agent any
    stages {
        stage('Initialize') {
            steps {
                script {
                    def dockerHome = tool 'Docker' // Nome que você deu na configuração
                    env.PATH = "${dockerHome}/bin:${env.PATH}" // Atualiza o PATH
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    sh 'docker build -t app-test .' // Execute seu comando Docker aqui
                }
            }
        }
        stage('Run') {
            steps {
                script {
                    sh 'docker run app-test' // Comando para rodar seu container
                }
            }
        }
    }
}
