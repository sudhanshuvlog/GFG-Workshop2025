### Jenkins


### What is CI/CD?

- CI/CD stands for Continuous Integration and Continuous Delivery/Deployment.
![alt text](JenkinsPipeline.png)

- Continuous Integration is the practice of merging code changes into a central repository several times a day. It is used to detect bugs early in the development cycle.
- Continuous Delivery is the practice of deploying code changes into a production environment. It is used to deliver code changes to the users.

**CI/CD Process Example**


Developer commit code in GitHub -> Pull the code from GitHub -> Build the code -> Test the code -> Deploy the code to the Dev environment -> Test the code in the Dev environment -> Deploy the code to the QA environment -> Test the code in the QA environment -> Deploy the code to the Production environment

### What is Jenkins?

- Jenkins is an open-source automation tool written in Java. It is used to automate the CI/CD process.

**Jenkins Installation**

- Install Java
- Install Libraries
- Install Jenkins

**After installing Jenkins, Follow the below steps:**

- Now Jenkins is installed and running on port 8080. To access Jenkins, open the following URL in a browser.
```
http://<ec2-instance-public-ip>:8080
```
- To get the initial admin password, run the following command.
```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
![net-3](https://github.com/mathesh-me/ci-cd-dotnet-app-deployment/assets/144098846/a1074f73-208f-4dca-807c-72fc457942d0)

- Install the suggested plugins.
![net-4](https://github.com/mathesh-me/ci-cd-dotnet-app-deployment/assets/144098846/1581bdb7-f27b-478a-b621-75f42e399ddf)


- Create an admin user.
![net-5](https://github.com/mathesh-me/ci-cd-dotnet-app-deployment/assets/144098846/0d423304-d815-48f2-bc8b-f86fbada4d6f)
![net-6](https://github.com/mathesh-me/ci-cd-dotnet-app-deployment/assets/144098846/b953738a-dc3d-4ebb-9e2a-3b262a3e6191)


- Jenkins is now ready to use.
![net-7](https://github.com/mathesh-me/ci-cd-dotnet-app-deployment/assets/144098846/be442fdc-7040-43c7-b0d7-c21bf7831d55)

### Jenkins Terminologies

- **Jenkins Job** - What work you want to do in Jenkins is called a Jenkins Job. It can be a build job, a test job, a deployment job, etc.

- **Jenkins Pipeline** - A Jenkins Pipeline is a collection of Jenkins Jobs. It is used to organize Jenkins Jobs into stages.

- **Master** - The Jenkins Master is the main Jenkins server. It is responsible for managing the Jenkins Jobs and the Jenkins Agents.

- **Worker/Agent** - The Jenkins Worker/Agent is a machine that is responsible for running Jenkins Jobs. It is connected to the Jenkins Master.


- Launch Jenkins Server On Docker- `docker run -p 8080:8080 -p 50000:50000 -dit --name jenkins --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17`

### Steps to Configure Jenkins Slave

- Launch an EC2 Instance with `t2.medium` Instance Type(We will configure it as our Jenkins Agent/Slave node)

- Run the below Command to download java JDK
    * `wget https://download.oracle.com/java/17/archive/jdk-17.0.10_linux-x64_bin.rpm`
    * `yum install jdk-17.0.10_linux-x64_bin.rpm -y`

- Start the agent and join it to the Jenkins Master Node(You will get the below commands, from Jenkins master while adding this node, Don't use the below one, They are for my server)
    * `curl -sO http://54.146.158.246:8080/jnlpJars/agent.jar`
    * `java -jar agent.jar -jnlpUrl http://54.146.158.246:8080/computer/ec2/jenkins-agent.jnlp -secret 557af3ada1a128916ce4cac68d93ce7eb1b6d5e186ac18f43972697165a9f0d8 -workDir "/" &`

### Jenkins Server

- My Python Flask App Repository used for demonstration(Snake Game)[https://github.com/sudhanshuvlog/SnakeGame.git]

- Create Cron Schedule Expression - https://crontab.guru/

- *Jenkinsfile* - A Jenkinsfile is a text file that contains the definition of a Jenkins Pipeline. It is written using the Groovy DSL (Domain-Specific Language) and is used to define the entire build process, including stages, steps, and other configurations. This approach provides consistency, repeatability, and easy collaboration in the software development and deployment process. A sample pipeline with name `jenkinsfile` is present in this repo.

### Why do we need Jenkins Cluster (Or) Jenkins Master-Slave Architecture?

- **Jenkins Cluster** is a group of Jenkins master nodes and slave nodes.
- Consider a scenario with a Jenkins server and 1000 jobs to run. Running all jobs on a single Jenkins server consumes a lot of resources from the master node and becomes difficult to manage.

**Example:**

- Handling increased workload or parallel jobs might be challenging for a single machine, leading to slower build times.
- If the master server fails or becomes unavailable, the entire CI/CD process is disrupted.

### Pipeline in Jenkins

- Jenkins Pipeline streamlines the execution of multiple stages within a single job, simplifying the overall workflow.
- **Pre-requisites** - You need to install the `Pipeline plugin` in your Jenkins server.
- Before the installation of the Pipeline plugin, the conventional approach involved running multiple jobs to handle distinct stages of a process.
- With the installation of the Pipeline plugin, the need for managing multiple jobs is eliminated. Now, all stages can be seamlessly executed within a single job, optimizing the CI/CD pipeline.

### Jenkinsfile

- In Pipeline, we can define the stages in a file called `Jenkinsfile`.
- Jenkinsfile uses Groovy language.
- By encapsulating all stages within the Jenkinsfile, users can execute an entire workflow within a single job. This simplifies job management and enhances pipeline efficiency.
- Example of Jenkinsfile:

```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
```

### Jenkins Pipeline Triggers

- Poll SCM - It will check the changes in the repository for every x minutes we mentioned.
- If we use `Poll SCM` trigger, It will waste a lot of resources, It is better for the use cases for data backup, etc.
- So we can use `Webhook` trigger, This trigger is event-driven and activates the Jenkins job only when there is a change in the repository.