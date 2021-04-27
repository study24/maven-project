node {
  stage('SCM') {
    git 'https://github.com/study24/maven-project.git'
  }
  stage('SonarQube analysis') {
    withSonarQubeEnv(credentialsId: 'b0814bb89bdde4d0f54cbe2583f3bda619ea799c', installationName: 'sonarqubetm') { // You can override the credential to be used
      sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:4.6.0.2311:sonar'
    }
  }
}
