pipeline {
  agent any
  stages {
    
    stage('Sonarqube') 
    {
    environment {
        scannerHome = tool 'sonarlocal'
    }
    steps {
        withSonarQubeEnv('sonar') {
            sh "${scannerHome}/bin/sonar-scanner"
        }
        timeout(time: 10, unit: 'MINUTES') {
            waitForQualityGate abortPipeline: true
        }
    }
}
    
