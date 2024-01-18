pipeline {
    agent any
    stages {
        stage('git repo & clean') {
            steps {
                script {
                    sh "rm -rf university_management"
                    sh "git clone https://github.com/LeHuuVu99/university_management.git"
                    sh "mvn clean -f university_management/pom.xml"
                }
            }
        }
        stage('install') {
            steps {
                script {
                    sh "mvn install -f university_management/pom.xml"
                }
            }
        }
        stage('test') {
            steps {
                script {
                    sh "mvn test -f university_management/pom.xml"
                }
            }
        }
        stage('package') {
            steps {
                script {
                    sh "mvn package -f university_management/pom.xml"
                }
            }
        }
    }
}
