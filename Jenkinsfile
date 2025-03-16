pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/chaitali2102/devops-cicd-pipeline.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t chaitali2104/my-nginx-app:latest .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh 'docker tag my-nginx-app chaitali2104/my-nginx-app:latest'
                    sh 'docker push chaitali2104/my-nginx-app:latest'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
            }
        }
    }
}

