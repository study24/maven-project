pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps 
   {  git branch: 'master', url: 'https://github.com/study24/maven-project'  } 
  }

  stage('code build')
  { steps 
   {  withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') 
    
    {
      sh 'mvn clean package'                    // provide maven command

} } }
	
	
	stage('CODE ANALYSIS with SONARQUBE') {
          
	
		
		steps {
            withSonarQubeEnv('sonar') {
               sh 'mvn clean install sonar:sonar -Dsonar.java.binaries=**/*.java'
            }
		}
	}

 

	
	
	
	
	
	
}
}	
