pipeline {
    agent any

    environment {
        PATH = "$PATH:/var/lib/jenkins/workspace/test@tmp/durable-5481693e/"
    }

    stages {
        stage('Build and Deploy') {
            steps {
		sh '''
                echo 'Building..'       
        docker-compose up -d
		'''
            }
        }
        stage('Test') {
            steps {
		sh '''
                echo 'Testing..'
		docker images
        docker ps
		'''
            }
        }
    }
}
