pipeline {
    agent any
    stages {
        stage('SCM') {
            steps {
                git changelog: false, credentialsId: 'jenkinsChatapp', url: 'https://github.com/kunalkale98/new_chatapp.git'
            }
        }
        stage('SonarQube analysis') {
            steps {
                withSonarQubeEnv('sonarQube_scanner') { // If you have configured more than one global server connection, you can specify its name
                    sh "/opt/sonarscanner/sonar-scanner-3.2.0.1227-linux/bin/sonar-scanner"
                }
            }
        }
        stage ("Quality gate") {
            steps {
                timeout(time: 3, unit: 'MINUTES') {
                    timeout(time: 1, unit: 'HOURS') {
                        waitForQualityGate abortPipeline: true
                    }
                }
            }
        }
        stage('Build') {
            steps {
                sh 'rsync -r -e "ssh -i /home/ubuntu/kunal_123.pem" /var/lib/jenkins/workspace/new_chatapp ubuntu@10.1.1.15:/home/ubuntu/'
            }
        }
        stage('Deploy') {
            steps {
                sh '''ssh -i /home/ubuntu/kunal_123.pem ubuntu@10.1.1.15 "bash /home/ubuntu/new_chatapp/scripts/cleanUp.sh"
                ssh -i /home/ubuntu/kunal_123.pem ubuntu@10.1.1.15 "bash /home/ubuntu/new_chatapp/scripts/move.sh"
                ssh -i /home/ubuntu/kunal_123.pem ubuntu@10.1.1.15 "bash /new_chatapp/scripts/startServer.sh"'''
            }
        }
    }
}
