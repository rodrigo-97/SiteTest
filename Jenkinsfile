pipeline {
    agent any 

    tools {
        nodejs 'NodeJS_20.12.1' // Nome da instalação do NodeJS que você configurou
    }

    stages {
        stage('Checkout') {
            steps {
                // Clonando o repositório
                git 'https://github.com/rodrigo-97/SiteTest.git'
            }
        }
        
        stage('Install Dependencies') {
            steps {
                echo 'INSTALANDO DEPENDÊNCIAS'
                // Instala as dependências usando npm
                sh 'npm install'
            }
        }

        stage('Run Server') {
            steps {
                echo 'EXECUTANDO O SERVIDOR'
                // Execute seu servidor aqui
                sh 'npm start' // ou qualquer comando que você usa para iniciar o servidor
            }
        }
    }

    post {
        always {
            echo 'Cleaning workspace...'
            cleanWs() // Limpa o workspace após a execução
        }
    }
}
