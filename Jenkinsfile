pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps 
   {  git branch: 'master', url: 'https://github.com/study24/maven-project'  } 
  }

 
	
	stage('CODE ANALYSIS with SONARQUBE') {
          
	
		
		steps {
			script {
            withSonarQubeEnv('sonar') {
               sh "mvn sonar:sonar"
		     
            }
				timepot(time:1, unit: 'HOURS') {
					def qg = waitForQualityGates()
					if (qg.status != 'ok') {
						error "Pipeline aborted due to quality gate failure: $(qg.status)"
					}
					sh "mvn clean install"
				
	}
			}
			
		}
	}

 

	
	
	
	
	
	
}
}	
