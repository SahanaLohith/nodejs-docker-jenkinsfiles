pipeline {
    agent any 
        stages{
            stage('Git checkout') {
                steps {
                    git branch: 'main', url: 'https://github.com/Maddalarajesh/React-app.git'
                }
            }
            stage('change directory') {
                steps{
                    dir('React-app') {
                        //steps within the specified directory
                    }
                }
            }
            stage('Build'){
                steps {
                sh 'docker build -t react .'
                sh 'docker run -dt --name web1 -p 3001:3000 react'
            }
        }
        stage ('push image to dockerhub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'nodejs', variable: 'dockerpwd')]) {
                    sh 'docker login -u rajeshmaddala -p ${dockerpwd}'
                    sh 'docker tag react rajeshmaddala/react'
                    sh 'docker push rajeshmaddala/react'
}
                }
            }
        }
    }
}
