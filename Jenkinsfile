pipeline {
    agent any

    

    stages {
        environment {
        PATH = "$PATH:/var/lib/jenkins/workspace/test@tmp/durable-33f18b73/script.sh"
        }
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
