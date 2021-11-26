/* groovylint-disable LineLength */
pipeline {
    agent any
    tools {
        jdk 'java'
        git 'Default'
        maven 'maven'
        terraform 'terraform'
    }
    environment {
        VER = VersionNumber([versionNumberString : '${BUILD_YEAR}.${BUILD_MONTH}.${BUILD_DAY}.RRTECH${BUILD_NUMBER}', projectStartDate : '2021-08-08'])
        imageName = 'jenkinsneww'
        dockerRegistry = 'Dockerusername'
        AWS_ACCESS_KEY_ID     = credentials('jenkins-aws-secret-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('jenkins-aws-secret-access-key')
    }
    
    stages {
        stage('Build Started') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
        stage('Cloning our Git') { 
            steps { 
                git 'https://github.com/rajkumar2289/maven-archetype-webapp.git' 
            }
        } 
        stage('list Git') { 
            steps { 
                sh 'ls -lart' 
                sh 'echo $VER'
            }
        }
		stage('Infra Provision with terraform') { 
            steps { 
                sh '''terraform init
                    terraform plan -out=terraformDevOps.plan
                    terraform apply --auto-approve
                    '''
            }
        }		
    }
}
