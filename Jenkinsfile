pipeline {
    agent any 
    stages {
        stage ('Repository checkout') {
            steps {
                git 'https://github.com/dileepchebolu/react_express_starter.git'
            }
        }
        stage ('Building the dokcer image') {
            steps {
                sh '''
                echo "Building Docker image using docker file"
                cat Dockerfile
                docker build -t assessment:latest Dockerfile
                '''
            }
        }
        stage ('Launching the container') {
            steps {
                sh '''
                    docker run -itd assessment:latest -p 8081:3000
                    ''' 
            }
        }
    }
}
    
