pipeline {
  agent {
    kubernetes {
      label 'sbt-jfrog'
      yaml """
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: sbt
    image: hseeberger/scala-sbt:8u222_1.3.7_2.13.1
    command:
    - cat
    tty: true
  - name: jfrog
    image: docker.bintray.io/jfrog/jfrog-cli-go:1.31.0
    command:
    - cat
    tty: true
"""
    }
  }
  stages {
    stage("Build Prep") {
      steps {
        container("sbt") {
          sh """
            sbt version
          """
        }
      }
    }
    stage("Build") {
      parallel {
        stage("b1") {
          steps {
            echo "b1"
          }
        }
        stage("b2") {
          steps {
            echo "b2"
          }
        }
        stage("b3") {
          steps {
            echo "b3"
          }
        }
        stage("b4") {
          steps {
            echo "b4"
          }
        }
        stage("b5") {
          steps {
            echo "b5"
          }
        }
        stage("b6") {
          steps {
            echo "b6"
          }
        }
        stage("b7") {
          steps {
            echo "b7"
          }
        }
      }
    }
  }
}