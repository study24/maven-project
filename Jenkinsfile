pipeline {
agent any 
stages{
  stage('SCM') {
  steps{
    git 'https://github.com/study24/maven-project'
  }
  }
    
    
    
    stage('SonarQube analysis') {
      steps{
    withSonarQubeEnv('sonarqubetm') {
      sh 'mvn clean package sonar:sonar'
    } // submitted SonarQube taskId is automatically attached to the pipeline context
  }
    }


  
  
  
}
}







  




