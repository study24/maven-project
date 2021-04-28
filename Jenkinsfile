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


stage("Quality Gate"){
  steps{
  timeout(time: 1, unit: 'HOURS') { // Just in case something goes wrong, pipeline will be killed after a timeout
    def qg = waitForQualityGate() // Reuse taskId previously collected by withSonarQubeEnv
    if (qg.status != 'OK') {
      error "Pipeline aborted due to quality gate failure: ${qg.status}"
    }
  
    else {
      print "Pipeline Executed Successfully: ${qg.status}"
    }
  }
  
  }
  
  }





}
}
  




