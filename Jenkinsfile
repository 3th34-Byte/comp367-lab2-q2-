pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps { checkout scm }
    }
    stage('Build') {
      steps {
        dir('comp367-webapp') {
          bat '"C:\\tools\\apache-maven-3.9.12\\bin\\mvn.cmd" -B clean package'
        }
      }
    }
    stage('Archive') {
      steps {
        archiveArtifacts artifacts: 'comp367-webapp/target/*.war', fingerprint: true
      }
    }
  }
}
