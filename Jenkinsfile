pipeline { 
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/veeramanir-github/CICD-Pipe.git']]])
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                sshagent(['DeployDemo']) {
    			sh 'scp -o StrictHostKeyChecking=no  /var/lib/jenkins/workspace/PipeLineScriptCICD/target/demo.war ubuntu@3.6.94.204:/var/lib/tomcat9/webapps'
		        }
                
            }
        }
    }
}    