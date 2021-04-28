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
  
  
  stage("Quality Gate") {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    // Parameter indicates whether to set pipeline to UNSTABLE if Quality Gate fails
                    // true = set pipeline to UNSTABLE, false = don't
                    waitForQualityGate abortPipeline: true
                }
            }
        }

  
  

  
    



  
  
  
}
}







  




