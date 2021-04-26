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
		      -Dsonar.host.url=http://18.195.85.177:9000 
                      -Dsonar.login=b5acbbb7bb27c10209c8ed85326aac4587af0408
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
