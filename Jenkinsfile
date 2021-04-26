 pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps {  git branch: 'master', url: 'https://github.com/study24/maven-project'  } }

  stage('code build')
 {
  steps{
 withSonarQubeEnv('sonar') {
  sh 'mvn sonar:sonar'

} } }
  
  
  }
}
