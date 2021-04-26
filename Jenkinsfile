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
 

          }
        }
      }
    

  }
}
