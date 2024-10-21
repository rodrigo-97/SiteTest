pipeline {
    agent any

    environment {
        IMAGE_NAME = 'SIMPLE_SERVER'
        IMAGE_TAG = 'latest'
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh '''
                    docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
                    '''
                }
            }
        }

        stage('Deploy Docker Container') {
            steps {
                script {
                    sh '''
                    docker run -d --name simple-server -p 3000:80 ${IMAGE_NAME}:${IMAGE_TAG}
                    '''
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finalizada'
        }
        success {
            echo 'Aplicação deployada com sucesso!'
        }
        failure {
            echo 'Falha no deploy!'
        }
    }
}
