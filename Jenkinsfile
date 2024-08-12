node('ci-server') {
    if (env.TAG_NAME ==~ '.*') {
      stage('Build Code') {
        print 'OK'
      }
      stage('Release Software') {
        print 'OK'
      }

    else {
      stage('Lint Code') {
        print 'OK'
      }
      stage('Run Unit Tests') {
        print 'OK'
      }
      stage('Run Integration Tests') {
        print 'OK'
      }
      stage('Sonar Scan Code Review') {
        print 'OK'
      }
    }

}
