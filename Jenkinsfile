pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps 
       {  git branch: 'master', url: 'https://github.com/study24/maven-project'  } 
  }
  
  stage('Build Code')
  {
    steps{ 
      sh 'mvn clean package'
    }
  }  
   
          
  stage('Archiving Artifacts')
  {
    steps { 
      archiveArtifacts allowEmptyArchive: true, artifacts: '**/*.war', followSymlinks: false, onlyIfSuccessful: true 
      
          }
  } 
  
  stage('Code Analysis SonaQube')
  {
    steps{ 
  
   // performing sonarqube analysis with "withSonarQubeENV(<Name of Server configured in Jenkins>)"
    withSonarQubeEnv('sonar-pro') {
      // requires SonarQube Scanner for Maven 3.2+
      sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar'
      
        }
                                    }
    
  }
  
  
  
   
  
    
  








}
}  




  
  
