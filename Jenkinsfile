pipeline {
    agent "Docker"
    stages {
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