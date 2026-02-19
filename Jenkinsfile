pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/yukthi29/flask-docker-jenkins.git'
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t flaskapp .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'docker compose up -d'
            }
        }

        stage('Test') {
            steps {
                sh 'curl http://localhost:5000'
            }
        }
    }
}

