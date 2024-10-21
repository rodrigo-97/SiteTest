pipeline {
    agent any 

    tools {
        nodejs 'NodeJS_20.12.1' // Nome da instalação do NodeJS que você configurou
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'INSTALANDO DEPENDÊNCIAS'
                git 'https://github.com/rodrigo-97/SiteTest.git'
            }
        }
        
        stage('Install Dependencies') {
            steps {
                echo 'INSTALANDO DEPENDÊNCIAS'
                sh 'npm install'
            }
        }

        stage('Run Server') {
            steps {
                echo 'EXECUTANDO O SERVIDOR'
                sh 'npx serve' 
            }
        }
    }

    post {
        always {
            echo 'LIMPANDO WORKSPACE'
            cleanWs()
        }
    }
}
