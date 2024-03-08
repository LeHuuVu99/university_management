pipeline {
    agent any


    stages {
        stage('Pull code') {
            steps {
                // Pull code from source control repository
                git branch: 'main', url: 'https://github.com/LeHuuVu99/university_management.git'
            }
        }
        stage('Compile and Clean') {
            steps {
                // Run Maven on any agent.
                sh "mvn clean compile"
            }
        }
        stage('Deploy') {
            steps {
                // Run Maven package command
                sh "mvn package"
            }
        }
        stage('Push code') {
            steps {
                // Push code to source control repository
                sh "git push origin main"
            }
        }
        stage('Archiving') {
            steps {
                // Archive built artifacts
                archiveArtifacts '**/target/*.jar'
            }
        }
    }
}
