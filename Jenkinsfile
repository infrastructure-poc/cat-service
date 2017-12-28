pipeline {
    agent {
        dockerfile true
    }

    stages {
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'python3 --version'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'python3 --version'
            }
        }
    }
}