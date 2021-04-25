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
  
  stage('build && SonarQube analysis') {
            steps {
                withSonarQubeEnv('My SonarQube Server') {
                    // Optionally use a Maven environment you've configured already
                    withMaven(maven:'Maven 7.1') {
                        sh 'mvn clean package sonar:sonar'
                    }
                }
            }
        }
  
  
  
   
  
    
  








}
}  




  
  
