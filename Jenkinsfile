pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps {  git branch: 'master', url: 'https://github.com/prakashk0301/maven-project'  } }

  stage('code build')
  { steps {  withMaven(jdk: 'LocalJDK', maven: 'local_maven_3.5') {
      sh 'mvn clean package'                    // provide maven command

} } }
	
	
 stage('CODE ANALYSIS with SONARQUBE') {
          
		  environment {
             scannerHome = tool 'sonar'
          }

          steps {
           
              withSonarQubeEnv('sonar') {
                sh 'mvn clean package sonar:sonar'
              }
              
            }	

	
	
	
	
	
	
}
}	
