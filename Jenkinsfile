pipeline {
  agent none
  stages {
    stage('Build documentation') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }

      }
      steps {
        sh './build_documentation.sh'
        archiveArtifacts '*.pdf'
      }
    }
  }
}
 
