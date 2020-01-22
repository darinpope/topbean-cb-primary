pipeline {
  agent {
    kubernetes {
      label "sbt-jfrog"
      yaml """
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: sbt
    image: colisweb/scala-sbt-gke:adoptopenjdk-11.0.5-slim-9.2.8.0-1.3.6
    command:
    - cat
    tty: true
    volumeMounts:
      - name: dockersock
        mountPath: "/var/run/docker.sock"
  - name: jfrog
    image: docker.bintray.io/jfrog/jfrog-cli-go:1.31.0
    command:
    - cat
    tty: true
  volumes:
    - name: dockersock
      hostPath:
        path: /var/run/docker.sock  
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
        container("jfrog") {
          sh """
            jfrog --version
          """
        }
      }
    }
    stage("Build") {
      parallel {
        stage("b1") {
          steps {
            dir("project-a") {
              container("sbt") {
                sh """
                  sbt clean docker:stage
                """
              }
              container("jfrog") {
                sh """
                  jfrog --version
                """
              }
            }
          }
        }
        stage("b2") {
          steps {
            dir("project-b") {
              container("sbt") {
                sh """
                  echo put sbt here
                """
              }
              container("jfrog") {
                sh """
                  jfrog --version
                """
              }
            }
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