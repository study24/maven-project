pipeline {
  agent any
  stages {
    stage('scm checkout') {
      steps {
        git branch: 'master', url: 'https://github.com/study24/maven-project'
      }
    }

    stage('CODE ANALYSIS with SONARQUBE') {

      steps {
        script {
          withSonarQubeEnv('sonar' , credentialsId: 'token') {
            sh "mvn sonar:sonar"

          }
        }
      }
    }

  }
}
