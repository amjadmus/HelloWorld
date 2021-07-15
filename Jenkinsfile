pipeline {
    agent any

    

    stages {
       
        stage('Build and Deploy') {
            steps {
        environment {
        PATH = "$PATH:/usr/local/bin/docker-compose"
        }    
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
