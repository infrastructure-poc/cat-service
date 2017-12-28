pipeline {
    agent {
        dockerfile true
    }

    stages {
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'python3 --version'
                slackSend "Test finished - ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'python3 --version'
                slackSend "Deploy finished - ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
            }
        }
    }
}