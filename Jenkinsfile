pipeline {
    agent { label 'Docker' } // Use a label para definir o agente

    stages {
        stage('Build') {
            steps {
                script {
                    // Execute seu comando Docker aqui
                    sh 'docker build -t app-test .' 
                }
            }
        }
        stage('Run') {
            steps {
                script {
                    // Comando para rodar seu container
                    sh 'docker run app-test'
                }
            }
        }
    }
}
