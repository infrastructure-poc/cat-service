
node {
    def app

    stage('Clone repository') {

		ws('/tmp/cat_service') {
			checkout scm
        }
    }

    stage('Test image') {
		ws('/tmp/cat_service') {
			echo 'Testing..'
			sh 'tox'
		}
		slackSend "Test finished - ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
    }

    stage('Build image') {

		ws('/tmp/cat_service') {
			app = docker.build("infrastructurepoc/cat-service")
		}
    }

    stage('Push image') {
		ws('/tmp/cat_service') {
			docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
				app.push("${env.BUILD_NUMBER}")
				app.push("latest")
			}
		}
    }
}