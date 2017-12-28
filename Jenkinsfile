pipeline {
    agent {
        dockerfile true
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                python3 --version
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                python3 --version
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                python3 --version
            }
        }
    }
}