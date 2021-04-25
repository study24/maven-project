node {

   stage('SCM') {
	  git 'https://github.com/study24/maven-project'
   }
   
   stage ('build the packages') {
	  sh 'mvn package'
   }
   
   stage('SonarQube analysis') {
    // performing sonarqube analysis with "withSonarQubeENV(<Name of Server configured in Jenkins>)"
    withSonarQubeEnv('sonar') {
      // requires SonarQube Scanner for Maven 3.2+
      sh 'mvn sonar:sonar'
    }
  }

}
