pipeline { //pipeline
    agent 
    {
        label "ec2"
    }

    stages {
        stage('Download the Source Code ') { // job1 - cloning the repo
            steps {
                git branch: 'main', url: 'https://github.com/sudhanshuvlog/SampleFlaskApp.git'
            }
        }
        stage("Install python3"){ // install python
            steps{
                sh 'yum install python3 -y'
            }
        }
        stage("Install pip"){
            steps{
                sh "yum install pip -y"
            }
        }
        stage("Install python dependencies"){
            steps{
                sh "pip3 install -r requirements.txt"
            }
        }
        stage("Execute Test Cases"){
            steps{
                sh "pytest"
            }
        }
        stage("Flake8 test cases"){
            steps{
              sh "python3 -m flake8"  
            }
        }
        stage("Build Docker Image"){
            steps{
                sh "yum install docker -y"
                sh "systemctl start docker"
                sh "docker build -t gfgworkshop ."
            }
        }
        stage("Deployment"){ //dev deployment
        steps{
            sh "docker rm -f webos"
            sh "docker run --name webos -d -p 81:80 gfgworkshop"
        }
        }
    }
}
