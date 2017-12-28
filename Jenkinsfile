pipeline {


    agent {
        dockerfile true
    }

    stages {

    	stage('Build') {
    		steps {
				def customImage = docker.build('infrastructurepoc/cat-service:${env.BUILD_ID}')
				customImage.inside {
					sh 'echo '
				}
				customImage.push()
    		}
    	}
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