pipeline {
    agent any


    stages 
	    { stage('SCM Checkout'){
          git 'https://github.com/study24/maven-project.git'
        }
    }
	{
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') {
                    sh 'mvn clean compile'
                }
            }
        }

        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') {
                    sh 'mvn test'
                }
            }
        }


        stage ('install Stage') {
            steps {
                withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') {
                    sh 'mvn install'
                }
            }
        }

        stage ('build && SonarQube analysis') {
            steps {
		withSonarQubeEnv('sonar') {
                    withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') 
                        sh 'mvn clean package sonar:sonar'
                    }
		}	
            }
        }
}
