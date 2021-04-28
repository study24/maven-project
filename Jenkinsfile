node {
  stage('SCM') {
    git 'https://github.com/study24/maven-project'
  }
  stage('SonarQube analysis') {
    withSonarQubeEnv('sonarqubetm') {
      sh 'mvn clean package sonar:sonar'
    } // submitted SonarQube taskId is automatically attached to the pipeline context
  }
}


stage('Quality Gate'){
 timeout(time: 1, unit: 'MINUTES') {
               waitForQualityGate abortPipeline: true
            }
  }



