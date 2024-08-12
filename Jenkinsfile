pipeline {

  agent {
    node {
      label 'ci-server'
    }
  }

  stages {

    stage('Lint Code') {
       when {
//         allOf {
           not { buildingTag() }
//           branch 'main'
//         }
       }
      steps {
         sh 'env'
        echo 'Lint Code'
      }
    }

    stage('Run Unit Tests') {
       when { not { buildingTag() } }
      steps {
        echo 'Run Unit Tests'
      }
    }

    stage('Run Integration Tests') {
       when { not { buildingTag() } }
      steps {
        echo 'Run Integration Tests'
      }
    }

    stage('Sonar Scan Code Review') {
      when {
//         allOf {
           not { buildingTag() }
//           branch 'main'
//         }
       }
      steps {
        echo 'Sonar Scan'
      }
    }

    stage('Build Code') {
       when { buildingTag() }
      steps {
        echo 'Build Code'
      }
    }

    stage('Release Software') {
       when { buildingTag() }
      steps {
        echo 'Release Software'
      }
    }

  }

}