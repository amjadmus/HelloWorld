pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		sh '''
                echo 'Building..'
		docker build .
		'''
            }
        }
        stage('Test') {
            steps {
		sh '''
                echo 'Testing..'
		docker images
		'''
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
