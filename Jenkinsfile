pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		docker build .
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
		docker images
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
