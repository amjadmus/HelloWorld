pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		sh '''
                echo 'Building..'
		docker build -t test1
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
