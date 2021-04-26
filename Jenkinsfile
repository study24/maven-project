 pipeline {
  agent any {
    docker {
      image 'maven'
      arg '-v &HOME/.m2/root/.m2'
    }
  }
  stages {
    stage('code analysis') {
      steps {
        script {
          withSonarQubeEnv('sonar') {
            sh "mvn sonar:sonar"
          }
          timeout(time: 1, unit: 'HOURS') {
            def qg = waitForQualityGate()
            if (qg.status != 'ok') {
             error "pipeline aborted due to quality gate failure: ${qg.status}"
              
            
            }
          }
          sh "mvn clean install"
        }
      }
    }
  }
}
