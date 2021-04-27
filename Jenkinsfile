node {
  stage('SCM') {
    git 'https://github.com/study24/maven-project.git'
  }
  stage('SonarQube analysis') {
    withSonarQubeEnv(credentialsId: 'token', installationName: 'sonarqubetm') { // You can override the credential to be used
      sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:4.6.0.2311:sonar'
    }
  }
}
