pipeline {
    agent any

    

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
