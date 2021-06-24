pipeline {
    agent any
    stages {
        stage('SCM') {
            steps {
                git changelog: false, credentialsId: 'jenkinsChatapp', url: 'https://github.com/kunalkale98/new_chatapp.git'
            }
        }
        stage('Build') {
            steps {
                sh 'rsync -r -e "ssh -i /home/ubuntu/kunal_123.pem" /var/lib/jenkins/workspace/new_chatapp ubuntu@10.1.0.131:/tmp/'
            }
        }
        stage('Deploy') {
            steps {
                sh '''ssh -i /home/ubuntu/kunal_123.pem ubuntu@10.1.0.131 "bash /tmp/new_chatapp/scripts/cleanUp.sh"
                ssh -i /home/ubuntu/kunal_123.pem ubuntu@10.1.0.131 "bash /tmp/new_chatapp/scripts/move.sh"'''
            }
        }
    }
}
