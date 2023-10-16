# CI/CD

![GitHub top language](https://img.shields.io/github/languages/top/amirhnajafiz/CI-CD)
![GitHub release (with filter)](https://img.shields.io/github/v/release/amirhnajafiz/CI-CD)

Templates for ```Github/Gitlab``` continuous integration and continuous delivery.
In this repository I gathered useful templates for creating CI/CD pipelines over
Gitlab or Github.

## content

### ArgoCD

- [Application](./ArgoCD)

### Github

- Golang
  - [Lint](./Github/Golang/lint.yaml)
  - [Test & Build](./Github/Golang/test-build.yaml)
- Docker
  - [Deploy](./Github/Docker/docker.yaml)
  
### Gitlab

- Golang
  - [Lint](./Gitlab/Golang/lint/)
  - [Test](./Gitlab/Golang/test/)
  - [Compite](./Gitlab/Golang/compile/)
  - [Build image](./Gitlab/Docker/build.gitlab-ci.yaml)
- Docker
  - [Release](./Gitlab/Docker/release.gitlab-ci.yaml)
- Helm
  - [Build](./Gitlab/Helm/build.sh)
  - [Release](./Gitlab/Helm/release.gitlab-ci.yaml)
- OpenShift
  - [Release](./Gitlab/OpenShift/release.gitlab-ci.yaml)
