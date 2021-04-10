pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps {  git branch: 'master', url: 'https://github.com/study24/maven-project'  } }

  stage('code build')
  { steps {  withMaven(jdk: 'Java version', maven: 'Maven home') {
      sh 'mvn deploy'                    

} } }
  
  stage('create docker image from dockerfile')
  { steps { sh 'docker build -t akashjava/final:v1 . '
             sh 'docker images'} }

}
}
