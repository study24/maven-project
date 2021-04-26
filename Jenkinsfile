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
       
           withSonarQubeEnv("sonar") {
          
           mvn sonar:sonar 
 
  -Dsonar.login=3ca7ce6e42dbf05cf4c6a1f52f7bf718f8f94094

          }
        }
      }
    

  }
}
