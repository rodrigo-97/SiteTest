pipeline {
    agent {
        label 'Docker'
    }
    stages {
        stage('Build') {
            steps {
                script {
                    sh 'docker build -t app-test .'
                }
            }
        }
        stage('Run') {
            steps {
                script {
                    sh 'docker run app-test'
                }
            }
        }
    }
}
