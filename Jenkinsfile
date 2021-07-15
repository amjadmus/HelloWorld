pipeline {
    agent any

    stages {
        stage('Build and Deploy') {
            steps {
		sh '''
                echo 'Building..'
        docker stop $(docker ps -a -q)    
        docker rm $(docker ps -a -q)    
        docker rmi $(docker images -q)        
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
