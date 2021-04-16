pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps {  git branch: 'master', url: 'https://github.com/prakashk0301/maven-project'  } }

  stage('code build')
  { steps {  withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') {
      sh 'mvn clean package'                    // provide maven command

} } }


  stage('deploy to dev')
    { steps {
       sshagent(['Tomcat-server']) {
       sh 'scp -o StrictHostKeyChecking=no /root/maven-project/webapp/target/webapp.war ec2-user@172.31.34.50:/root/tomcat/webapps'
    }
            }
         }

}
}  




  
  
